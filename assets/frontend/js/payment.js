window.planId = 'kc-12-months';
window.nextUpsell = "workouts2";

window.onscroll = function () {
    scrollFunction()
};

function scrollFunction() {
    if (document.body.scrollTop > 720 || document.documentElement.scrollTop > 720) {
        document.getElementById("navbar-fixed").style.top = "0";
    } else {
        document.getElementById("navbar-fixed").style.top = "-90px";
    }
}

window.pricingOption = 2;
window.clientToken = "";
window.unitSystem = "metric";
window.email = "knoxind@gmail.com";
window.clientCode = "1b9f970c925281e17530d3d43c559d0e";
window.pricing = {
    'pricing-1': {
        amount: 33,
        billingPeriod: 3,
        planId: 'kc-3-months'
    },            
    'pricing-2': {
        amount: 46,
        billingPeriod: 6,
        planId: 'kc-6-months'
    },
    'pricing-3': {
        amount: 66,
        billingPeriod: 12,
        planId: 'kc-12-months'
    },
};


/*function setupAdyen() {
    window.adyenSetup = true;
    const configuration = {
        locale: "en-US",
        environment: "live",
        originKey: "pub.v2.2615626567813700.aHR0cHM6Ly9rZXRvY3ljbGUuZGlldA.V1upzSKN3SBq8lVhIKNJijs_Kv-ksArRZd_ZH1nzwFU",
        openFirstPaymentMethod: true,
        paymentMethodsResponse: {"groups":[{"name":"Credit Card","types":["amex","mc","visa"]},{"name":"AliPay","types":["alipay"]}],"paymentMethods":[{"brands":["amex","mc","visa"],"details":[{"key":"encryptedCardNumber","type":"cardToken"},{"key":"encryptedSecurityCode","type":"cardToken"},{"key":"encryptedExpiryMonth","type":"cardToken"},{"key":"encryptedExpiryYear","type":"cardToken"},{"key":"holderName","optional":true,"type":"text"}],"name":"Credit Card","type":"scheme"}]}
    };
    const checkout = new AdyenCheckout(configuration);

    const dropin = checkout.create('dropin', {
        paymentMethodsConfiguration: {
            card: {
                hasHolderName: true,
                holderNameRequired: true,
                enableStoreDetails: true,
            }
        },
        onError: (error) => {
            console.log(error);
        },
        onReady: () => {
        },
        onSubmit: (state, dropin) => {
            console.log(state.data);
            makePayment(state.data);
        },
        onAdditionalDetails: (state, dropin) => {
            makeDetailsCall(state.data)
                    // Your function calling your server to make a /payments/details request
                    .then(action => {
                        dropin.handleAction(action);
                            // Drop-in will handle the action object from the /payments/details response
                        })
                    .catch(error => {
                        throw Error(error);
                    });
                }
            }).mount('#adyen-container');
}

function makePayment(paymentData) {
    var adyenButton = $('.adyen-checkout__button');
    adyenButton.attr('disabled', true);
    adyenButton.attr('style', 'opacity:0.5');

    setTimeout(function () {
        adyenButton.html('Processing..');
    }, 200);

    var request = jQuery.post('/subscription/prepare', {
        'payment_method': 'adyen',
        'planId': window.planId,
        'code': window.clientCode,
        'orderId': window.orderId,
    });

    request.done(function (response) {
        if (response.status === true) {
            window.orderId = response.order_id;

            var chargeData = {
                payload: paymentData,
                orderId: response.order_id,
                planId: window.planId,
            };
            jQuery.post('/adyen/charge', chargeData, function (response) {
                if (response.resultCode == "RedirectShopper") {
                    window.location = response.redirect.url;
                }
                if (response.resultCode == "Error" || response.resultCode == "Cancelled" || response.resultCode == "Refused") {
                    handleAdyenError();
                }
                if (response.resultCode == "Authorised" || response.resultCode == "Pending" || response.resultCode == "Received") {
                    window.location = "/adyen/accepted/" + window.clientCode;
                }
            }).fail(function () {
                handleAdyenError();
            });
        }
    });

    request.fail(function () {
        handleAdyenError();
    });
}

function handleAdyenError() {
    alert("Payment failed. Please try again.");
    var adyenButton = $('.adyen-checkout__button');
    adyenButton.removeAttr('disabled');
    adyenButton.attr('style', 'opacity:1');
    adyenButton.html('Pay');
}

function setupPaypal() {
    var clientToken = window.clientToken;
    braintree.client.create({
        authorization: clientToken,
        locale: "en_US",
    }, function (clientErr, clientInstance) {

        if (clientErr) {
            console.error('Error creating client:', clientErr);
            return;
        }

                // Create a PayPal Checkout component.
                braintree.paypalCheckout.create({
                    client: clientInstance
                }, function (paypalCheckoutErr, paypalCheckoutInstance) {
                    if (paypalCheckoutErr) {
                        console.error('Error creating PayPal Checkout:', paypalCheckoutErr);
                        return;
                    }

                    paypal.Button.render({
                        env: "production",
                        locale: "en_US",
                        payment: function () {
                            window.dataLayer.push({
                                'event': 'paypalAttempt',
                            });
                            return paypalCheckoutInstance.createPayment({
                                flow: 'vault',
                                billingAgreementDescription: 'KetoCycle personalized Keto meal plan payments.',
                                currency: "USD",
                            });
                        },

                        onAuthorize: function (data, actions) {
                            return paypalCheckoutInstance.tokenizePayment(data, function (err, payload) {
                                $('.payment-separator').hide();
                                $('#braintree-checkout').hide();
                                $('.payment-loader').fadeIn();

                                jQuery.post('/subscription/prepare', {
                                    'payment_method': 'paypal',
                                    'planId': window.planId,
                                    'code': window.clientCode,
                                }, function (response) {
                                    if (response.status === true) {
                                        var chargeData = {
                                            nonce: payload.nonce,
                                            orderId: response.order_id,
                                            planId: window.planId,
                                            storeInVault: 1,
                                            name: $('#card-holder').val()
                                        };

                                        jQuery.post('/braintree/subscribe', chargeData, function (chargeResponse) {
                                            if (chargeResponse.status) {
                                                window.location = '/successUpsell/' + window.clientCode+'/'+window.nextUpsell;
                                            } else {
                                                alert('Something went wrong. Please try again.')
                                                $('.payment-separator').fadeIn();
                                                $('#braintree-checkout').fadeIn();
                                                $('.payment-loader').hide();
                                            }
                                        }, "json");
                                    } else {
                                        $('.payment-separator').fadeIn();
                                        $('#braintree-checkout').fadeIn();
                                        $('.payment-loader').hide();
                                        alert('Something went wrong. Please try again.')
                                    }
                                });
                            });
                        },

                        onCancel: function (data) {
                            $('.cc-container').fadeIn();
                            $('#braintree-submit-button').fadeIn();
                            $('.payment-loader').hide();
                            console.log('checkout.js payment cancelled', JSON.stringify(data, 0, 2));
                        },

                        onError: function (err) {
                            console.error('checkout.js error', err);
                        }
                    }, '#paypal-button').then(function () {

                    });

                });

    });
}*/

function timeCounter(duration, display) {
    var timer = duration, minutes, seconds;
    setInterval(function () {
        minutes = parseInt(timer / 60, 10)
        seconds = parseInt(timer % 60, 10);

        minutes = minutes < 10 ? "0" + minutes : minutes;
        seconds = seconds < 10 ? "0" + seconds : seconds;

        display.html(minutes + ":" + seconds);

        if (--timer < 0) {
            timer = duration;
        }
    }, 1000);
}

$(document).ready(function () {

    if ($('#billing').length > 0) {
        var minutes = 15 * 60,
        display = $('.limited-offer .time');
        timeCounter(minutes, display);
    }

    // setupAdyen();
    // setupPaypal();

    $('.pricing-option').click(function() {
        $('.pricing-option').removeClass('active');
        window.pricingOption = $(this).data('pricing');
        window.planId = window.pricing['pricing-'+window.pricingOption].planId;
//        $('.final-price span.amount').html("$"+window.pricing['pricing-'+window.pricingOption].amount+'.00 ');
//        $('.final-price span.period').html(window.pricing['pricing-'+window.pricingOption].billingPeriod+' ');
        $('.pricing-'+window.pricingOption).addClass('active');

        if ($('.e-terms_and_conditions').is(':checked') === false) {
            if($(this).closest('#navbar-fixed').length !== 0){
                $([document.documentElement, document.body]).animate({
                    scrollTop: $(".benefits-listed").offset().top - 50
                }, 500);
                $('.flex-block').find('.e-termsconditions .error-msg').fadeIn();
            }

            $(this).closest('.flex-block').find('.e-termsconditions .error-msg').fadeIn();
            return false;
        } else {
            $('.e-termsconditions .error-msg').hide();
            $('#cc-modal').modal("show");
        }
    });

    $('.scroll-back-btn').click(function () {
        $("html, body").animate({scrollTop: 0}, "slow");
        return false;
    });

    $('.cta-btn').click(function () {
        if ($('.e-terms_and_conditions').is(':checked') === false) {

            if($(this).closest('#navbar-fixed').length !== 0){
                $([document.documentElement, document.body]).animate({
                    scrollTop: $(".benefits-listed").offset().top - 50
                }, 500);
                $('.flex-block').find('.e-termsconditions .error-msg').fadeIn();
            }

            $(this).closest('.flex-block').find('.e-termsconditions .error-msg').fadeIn();
            return false;
        } else {
            $('.e-termsconditions .error-msg').hide();
            $('#cc-modal').modal("show");
        }
    });

    //launch payment method setups

    $('.btn-card').click(function () {
        if ($('.e-terms_and_conditions').is(':checked') === false) {
            $('.e-termsconditions .error-msg').fadeIn();
            return false;
        } else {
            $('.e-termsconditions .error-msg').hide();
        }
        $('#reviews-modal').modal('hide');
    });

    $('.flex-block').click(function () {
        window.test = $(this).data('testing');
    });

    $('.scroll-btn').click(function () {
        $([document.documentElement, document.body]).animate({
            scrollTop: $("#get-plan-btn").offset().top - 20
        }, 1000);
    });

});






//get content from kilo.health API
/*$(document).ready(function () {

    var posts_to_get = [
    {
        'tax_slug': 'ketocycle',
        'post_slug_includes': '',
        'post_id': '553',
        'parent_element': '#terms_and_conditions_modal_us',
    },
    {
        'tax_slug': 'ketocycle',
        'post_slug_includes': '',
        'post_id': '540',
        'parent_element': '#privacy_policy_modal',
    },
    {
        'tax_slug': 'ketocycle',
        'post_slug_includes': '',
        'post_id': '552',
        'parent_element': '#terms_and_conditions_modal_eu',
    }
    ];

    if (typeof posts_to_get !== 'undefined') {
        posts_to_get.map(function (post_to_get) {

            var element_fallback = $('' + post_to_get.parent_element + ' .b-text-fallback');
            var element_api = $('' + post_to_get.parent_element + ' .b-text-api');
            var element_loading = $('' + post_to_get.parent_element + ' .modal-content');

            var tax_data = {
                'status': false,
                'id': '',
            };

            $.ajax({
                type: 'GET',
                url: 'https://kilo.health/wp-json/wp/v2/external-project',
                beforeSend: function () {
                    element_loading.append('<div class="loader">Loading...</div>');
                },
                success: function (data) {
                    var requests = data.map(function (tax) {
                        if (tax.slug === post_to_get.tax_slug) {
                            tax_data.status = true;
                            tax_data.id = tax.id;

                        }
                    })

                    Promise.all(requests).then(function() {
                        if (tax_data.status) {
                            $.ajax({
                                type: 'GET',
                                url: 'https://kilo.health/wp-json/wp/v2/external-pages?external-project=' + tax_data.id + '',
                                beforeSend: function () {
                                },
                                success: function (data) {
                                    $('.loader').remove();
                                    if (data.length > 0) {
                                        var content = {
                                            'status': false,
                                            'post': ''
                                        };
                                        var requests = data.map(function (post) {
                                            if (post_to_get.post_id.toString().length > 0) {
                                                if (post.id === parseInt(post_to_get.post_id)) {
                                                    content.status = true;
                                                    content.post = post;
                                                }
                                            } else {
                                                if (post_to_get.post_slug_includes.length > 0 && post.slug.includes(post_to_get.post_slug_includes)) {
                                                    content.status = true;
                                                    content.post = post;
                                                }
                                            }
                                        })

                                        Promise.all(requests).then(function() {
                                            if (content.status) {
                                                element_api.append(content.post.content.rendered).fadeIn()
                                            } else {
                                                element_fallback.fadeIn();
                                            }
                                        })

                                    } else {
                                        element_fallback.fadeIn();
                                    }
                                },
                                error: function (xhr) {
                                    element_fallback.fadeIn();
                                },
                                complete: function () {
                                },
                                        // dataType: 'html'
                                    });
                        } else {
                            $('.loader').remove();
                            element_fallback.fadeIn();
                        }
                    });
                },
                error: function (xhr) {
                    $('.loader').remove();
                    element_fallback.fadeIn();
                },
                complete: function () {
                },
            });
        })
} else {
    element_fallback.fadeIn();
}
});*/