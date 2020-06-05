/************script 1*****************/


$('.e-btn-readmore').click(function () {
    $(this).hide()
    $('.story-block .e-description').addClass('is-open')
});

$.ajaxSetup({
    headers: {
        'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
    }
});
window.currentStep = 1;
window.height = 0;
window.weight = 0;
window.email = '';
window.gender = "male";
window.preparation = null;
window.targetWeight = 0;
window.unitSystem = "metric";
window.weightValueText = 'Weight';
window.targetWeightText = 'Target weight';

$(document).ready(function () {

    $('#step-1 .fancy-radio').click(function () {
        $('#step-1 .fancy-radio .status-icon').html('-');
        $('#step-1 .fancy-radio').removeClass('active');
    });  
    $('#step-3 .fancy-radio').click(function () {
        $('#step-3 .fancy-radio .status-icon').html('-');
        $('#step-3 .fancy-radio').removeClass('active');
    });
        
    $('#step-6 .fancy-radio').click(function () {
        $('#step-6 .fancy-radio .status-icon').html('-');
        $('#step-6 .fancy-radio').removeClass('active');
    });
    $('#step-7 .fancy-radio').click(function () {
        $('#step-7 .fancy-radio .status-icon').html('-');
        $('#step-7 .fancy-radio').removeClass('active');
    });


    $('#step-4 .fancy-radio .status-icon').html('-');
    $('#step-5 .fancy-radio .status-icon').html('-');

    $('#step-4 .veg-btn').click(function () {
        $('#step-4 .fancy-radio .status-icon').html('-');
        $('#step-4 .fancy-radio').removeClass('active');
    });
    $('#step-4 .mt-btn').click(function () {
        $('#step-4 .veg-btn .status-icon').html('-');
        $('#step-4 .veg-btn').removeClass('active');
    });

    $('.fancy-radio-holder .fancy-radio').click(function () {
         //$('.fancy-radio .status-icon').html('-');
            //$('.fancy-radio').removeClass('active');
        $(this).addClass('active');
        $(this).find('.status-icon').html('+');
    });
    $('.fancy-checkbox-holder .fancy-radio').click(function () {
        $(this).toggleClass('active');
        if ($(this).hasClass('active')) {
            $(this).find('.status-icon').html('+');
        } else {
            $(this).find('.status-icon').html('-');
        }
    });

    $('.units-toggler .btn').click(function () {
        $('.units-toggler .btn').removeClass('active');
        $(this).addClass('active');
        if ($(this).data('type') == "imperial") {
            window.unitSystem = "imperial";
            $('.metric-height').hide();
            $('.imperial-height').show();
            $('.units.height').html('ft');
            $('.units.height:last').html('in');
            $('.units.weight').html('lb');
            $('#weight-value').attr("placeholder", window.weightValueText + ' (lb)');
            $('#targetWeight-value').attr("placeholder", window.targetWeightText + ' (lb)');
        } else {
            window.unitSystem = "metric";
            $('.metric-height').show();
            $('.imperial-height').hide();
            $('.units.height').html('cm');
            $('.units.weight').html('kg');
            $('#weight-value').attr("placeholder", window.weightValueText + ' (kg)');
            $('#targetWeight-value').attr("placeholder", window.targetWeightText + ' (kg)');
        }
    });

    var questions_amount = $('.step[data-mode="question"]').length + 1;
    var slider_indicator = 100 / questions_amount;
    var slider_current_amount = slider_indicator;

    $('.btn-back').click(function () {
        var slide_parent = $('.step.active');

        slider_current_amount = slider_current_amount - slider_indicator;
        $('.progress-bar .progress').animate({width: (slider_current_amount) + '%'}, 750);

        //back to landing page
        if (slide_parent.data('type') === 'familiar_question') {
            window.location = document.referrer;
            return true;
        }

        if (slide_parent.data('type') === 'email') {
            $('.step').hide().removeClass('active');
            $('.step.results').fadeIn().addClass('active');
            slide_parent.removeClass('active').hide();
            $('.mainNavbar').hide();
            $('#desktop-container').removeClass('desktop-container')
        } else if (slide_parent.data('type') !== 'familiar_question') {
            $('.step').removeClass('active').hide();
            window.currentStep--;
            window.location.hash = '#step' + window.currentStep;
            if (slide_parent.prev().data('type') === 'units_question') {
                $('.units-toggler').show();
            } else {
                $('.units-toggler').hide();
            }
            if (window.currentStep == 9) {
                $('nav, .subheader').hide();
            }
            $(slide_parent).prev().fadeIn().addClass('active');
        }
    });

    $('.scroll-btn').click(function () {
        $([document.documentElement, document.body]).animate({
            scrollTop: $("#summary-footer").offset().top - 20
        }, 1000);
    });

    function validateEmail(email) {
        var re = /^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
        return re.test(String(email).toLowerCase());
    }

    function myIsNaN(o) {
        return typeof (o) === 'number' && isNaN(o);
    }
    function mailcheck() {
    }
    function mail_autocorrect($this) {
        $this.mailcheck({
            suggested: function (element, suggestion) {
                $("#suggest").html("Did you mean: <b class='e-emailsuggestion'>" + suggestion.full + "</b>?");
            },
            empty: function (element) {
                $("#suggest").html("");
            }
        })
        setTimeout(function () {
            $('#suggest .e-emailsuggestion').on("mousedown click", function () {
                var value = $(this).text();
                $('#email-value').val(value);
                $("#suggest").html("");
            })
        }, 100)
    }

    $('#email-value').on('blur', function () {
        mail_autocorrect($(this))
    });

    var typingTimer; //timer identifier
    var doneTypingInterval = 600; //time in ms, 5 second for example
    var $input = $('#email-value');

    $input.on('keyup', function () {
        clearTimeout(typingTimer);
        typingTimer = setTimeout(doneTyping, doneTypingInterval);
    });

    $input.on('keydown', function () {
        clearTimeout(typingTimer);
    });

    function doneTyping() {
        mail_autocorrect($input)
    }

    var slick_initialized = false;
    $('.progress-bar .progress').animate({width: (slider_current_amount) + '%'}, 750);

    $('.step').on('click', '.btn-single', function () {
        var slider_parent = $(this).closest('.step');
        var current_slide = $('.step.active');

        if (slider_parent.data('type') === 'first_question') {
            window.preparationTime = $('.step.active .fancy-radio.active').data('answer');
            window.dataLayer.push({
                'question': 'preparationTime',
                'questionAnswer': window.preparationTime,
                'event': 'quizQuestionAnswered',
                'preparationTime': window.preparationTime
            });
        }
        if (slider_parent.data('type') === 'howactive_question') {
            window.activityLevel = $('.step.active .fancy-radio.active').data('answer');
            window.dataLayer.push({
                'question': 'activityLevel',
                'questionAnswer': window.activityLevel,
                'event': 'quizQuestionAnswered',
                'activityLevel': window.activityLevel
            });
        }
        if (slider_parent.data('type') === 'familiar_question') {
            window.familiar = $('.step.active .fancy-radio.active').data('answer');
            window.dataLayer.push({
                'question': 'familiar',
                'questionAnswer': window.familiar,
                'event': 'quizQuestionAnswered',
                'familiarity': window.familiar
            });
        }
        if (slider_parent.data('type') === 'willing_question') {
            window.willingness = $('.step.active .fancy-radio.active').data('answer');
            window.dataLayer.push({
                'question': 'willingness',
                'questionAnswer': window.willingness,
                'event': 'quizQuestionAnswered',
                'willingness': window.willingness
            });
        }

        if (slider_parent.next().data('type') === 'units_question') {
            $('.units-toggler').show();
        }

        setTimeout(function () {
            slider_current_amount = slider_current_amount + slider_indicator;
            $('.progress-bar .progress').animate({width: (slider_current_amount) + '%'}, 750);

            if (slider_parent.data('mode') === 'question' && slider_parent.data('type') !== 'units_question') {
                $('.step').removeClass('active').hide();
            }
            $(current_slide).next().fadeIn().addClass('active');

            $([document.documentElement, document.body]).animate({
                scrollTop: 0
            }, 600);

            window.currentStep++;
            window.location.hash = '#step' + window.currentStep;
        }, 150);
    });
    $('.btn-next-step').click(function () {
        var slider_parent = $(this).closest('.step');
        var current_slide = $('.step.active');

        if (slider_parent.data('answer') === 'single' || slider_parent.data('answer') === 'multiple') {
            if ($('.step.active .fancy-radio.active').length == 0) {
                $(this).html("Next");
                $('.error-msg').html('Please select an answer').fadeIn();
                return false;
            }
        }

        if (slider_parent.next().data('type') === 'testimonials' && !slick_initialized) {
            $('.step .b-slides').slick({
                dots: false,
                infinite: false,
                speed: 300,
                slidesToShow: 3,
                slidesToScroll: 1,
                responsive: [{
                        breakpoint: 600,
                        settings: {
                            slidesToShow: 1,
                            slidesToScroll: 1,
                            infinite: true,
                            dots: true,
                            arrows: false,
                        }
                    }]
            });
            slick_initialized = true;
        }

        if (slider_parent.next().data('type') === 'units_question') {
            $('.units-toggler').show();
        }

        if (slider_parent.data('type') === 'email') {
            $('#desktop-container').addClass('desktop-container');
            if (!validateEmail($('#email-value').val())) {
                $('.error-msg').html('Please enter your email').fadeIn();
                $(this).html("Next");
                return false;
            }
            $('.step[data-type="email"] .btn-next-step').text('Loading').css('pointer-events', 'none');
        }

        $('.error-msg').hide();

        if (slider_parent.data('type') === 'first_question') {
            window.preparationTime = $('.step.active .fancy-radio.active').data('answer');
            window.dataLayer.push({
                'question': 'preparationTime',
                'questionAnswer': window.preparationTime,
                'event': 'quizQuestionAnswered',
                'preparationTime': window.preparationTime
            });
        }

        if (slider_parent.data('type') === 'meat_question') {
            var meats = [];
            $('.step.active .fancy-radio.active').each(function () {
                meats.push($(this).data('answer'));
            });

            window.meats = meats.join(",");
            window.dataLayer.push({
                'question': 'meats',
                'questionAnswer': window.meats,
                'event': 'quizQuestionAnswered',
                'meats': window.meats
            });
        }
        if (slider_parent.data('type') === 'products_question') {
            var products = [];
            $('.step.active .fancy-radio.active').each(function () {
                products.push($(this).data('answer'));
            });

            if (products.length < 4) {
                $('.error-msg').html('Please select more products in order to get a complete and diversified meal plan.').fadeIn();
                return false;
            }

            window.products = products.join(",");
            window.dataLayer.push({
                'question': 'products',
                'questionAnswer': window.products,
                'event': 'quizQuestionAnswered',
                'products': window.products
            });
        }
        if (slider_parent.data('type') === 'howactive_question') {
            window.activityLevel = $('.step.active .fancy-radio.active').data('answer');
            window.dataLayer.push({
                'question': 'activityLevel',
                'questionAnswer': window.activityLevel,
                'event': 'quizQuestionAnswered',
                'activityLevel': window.activityLevel
            });
        }
        if (slider_parent.data('type') === 'familiar_question') {
            window.familiar = $('.step.active .fancy-radio.active').data('answer');
            window.dataLayer.push({
                'question': 'familiar',
                'questionAnswer': window.familiar,
                'event': 'quizQuestionAnswered',
                'familiarity': window.familiar
            });
        }
        if (slider_parent.data('type') === 'willing_question') {
            window.willingness = $('.step.active .fancy-radio.active').data('answer');
            window.dataLayer.push({
                'question': 'willingness',
                'questionAnswer': window.willingness,
                'event': 'quizQuestionAnswered',
                'willingness': window.willingness
            });
        }

        if (slider_parent.data('type') === 'units_question') {
            window.weight = $('#weight-value').val();

            if (window.weight.length == 0) {
                $('.error-msg').html('Please select your weight').fadeIn();
                $(this).html("Next");
                return false;
            }

            window.targetWeight = $('#targetWeight-value').val();

            if (window.targetWeight.length == 0) {
                $('.error-msg').html('Please select your target weight').fadeIn();
                $(this).html("Next");
                return false;
            }

            if (window.unitSystem == "metric") {
                window.height = $('#metric-height-value').val();
            } else {
                var ft = parseInt($('#feet-value').val());
                var inch = parseInt($('#inch-value').val());
                window.height = Math.round((ft + inch * 0.0833333) * 100) / 100;
            }

            if (window.height < 2 || myIsNaN(window.height)) {
                $('.error-msg').html('Please select your height').fadeIn();
                $(this).html("Next");
                return false;
            }
            window.email = $('#email-value').val();

            if (!validateEmail($('#email-value').val())) {
                $('.error-msg').html('Please enter your email').fadeIn();
                $(this).html("Next");
                return false;
            } else if(check_user_email($('#email-value').val())) {
                
            }


            window.age = $('#age-value').val();
            window.dataLayer.push({
                'question': 'age',
                'questionAnswer': window.age,
                'event': 'quizQuestionAnswered',
                'age': window.age
            });


            if (window.age.length == 0) {
                $('.error-msg').html('Please select your age').fadeIn();
                $(this).html("Next");
                return false;
            }

            //validate BMI
            var bmi = calculateBMI();
            if (bmi < 18 || bmi > 55) {
                $('.error-msg').html('Your height and weight ratio seems invalid. Please double-check. You might have used metric system (kg) instead of imperial. You can change preferred unit system at the top of this page.').fadeIn();
                $(this).html("Next");
                return false;
            }

        }

        if (slider_parent.data('type') === 'units_question') {
            slider_parent.find('.btn-next-step').text("Processing...");
            saveData();
            $(".cm-loader").css({"display": "block"});
            $(".mainNavbar").css({"display": "none"});
            $(".subheader").css({"display": "none"});
            $("#step-8").css({"display": "none"});
            $(".step-number").css({"display": "none"});
            /*setTimeout(function(){
                return false;
            }, 6000);*/

            $('.loader').loader();
            var progr = 1;
            setInterval(function () {
                $('.loader').loader('setProgress', ++progr);
            }, 100);

            setTimeout(function(){
                return false;
            }, 9700);
            
        }

        if (slider_parent.data('type') === 'results') {
            $('.step').removeClass('active');
            $('nav').show();
            $('#desktop-container').addClass('desktop-container');
            $('body').addClass('desktop-bg');
            $('#email-value').focus();
            $('.step.results').fadeOut();
            $('.step[data-type="email"]').fadeIn().addClass('active');
            window.location.hash = '#emailInput';
        }

        if (slider_parent.data('type') === 'email') {

            var emailEntered = $('#email-value').val();
            window.emailValid = true;


            if (window.emailValid) {
                slider_parent.find('.btn-next-step').text("Processing...");
                saveEmail(emailEntered);
            } else {
                window.currentStep -= 1;
                $(this).html("Next");
                $('.error-msg').html('Please enter valid email address').fadeIn();
                return false;
            }
        }


        slider_current_amount = slider_current_amount + slider_indicator;
        $('.progress-bar .progress').animate({width: (slider_current_amount) + '%'}, 750);

        if (slider_parent.data('mode') === 'question' && slider_parent.data('type') !== 'units_question') {
            $('.step').removeClass('active').hide();
        }
        $(current_slide).next().fadeIn().addClass('active');

        $([document.documentElement, document.body]).animate({
            scrollTop: 0
        }, 600);

        window.currentStep++;
        window.location.hash = '#step' + window.currentStep;
    });

    $('.gender-buttons .btn').click(function () {
        window.gender = $(this).data('gender');
        $('#landing').hide();
        $('nav, .subheader').fadeIn();
        $('#step-1').fadeIn().addClass('active');
        $('#desktop-container').addClass('desktop-container');
        $('body').addClass('desktop-bg');
        window.location.hash = '#step1';
        $([document.documentElement, document.body]).animate({
            scrollTop: 0
        }, 600);
    });
});

function calculateCalories(bmr) {
    if (window.activityLevel == 1) {
        return bmr * 1.2
    } else if (window.activityLevel == 2) {
        return bmr * 1.375
    } else if (window.activityLevel == 3) {
        return bmr * 1.55
    } else {
        return bmr * 1.2
    }
}

function calculateBMR() {
    if (window.unitSystem == "imperial") {
        var ft = parseInt($('#feet-value').val());
        var inch = parseInt($('#inch-value').val());
        var height = ft * 12 + inch;
        return (88.362 + (13.397 * window.weight) + (4.799 * height) - (5.677 * window.age))
    } else {
        var height = window.height / 100;
        return (88.362 + (13.397 * window.weight) + (4.799 * height) - (5.677 * window.age))
    }
}

function calculateBMI() {
    if (window.unitSystem == "imperial") {
        var ft = parseInt($('#feet-value').val());
        var inch = parseInt($('#inch-value').val());
        var height = ft * 12 + inch;

        return (703 * window.weight / (height * height));
    } else {
        var height = window.height / 100;
        return (window.weight / (height * height));
    }
}

function saveData() {
    //create client
    var clientData = {
        status: 'free',
        gender: window.gender,
        age: window.age,
        height: window.height,
        weight: window.weight,
        target_weight: window.targetWeight,
        unit_system: window.unitSystem,
        email: window.email,
        bmi: calculateBMI(),
        bmr: calculateBMR(),
        calories: calculateCalories(calculateBMR()),
    };

    var settings = {
        willingness: window.willingness,
        activityLevel: window.activityLevel,
        preparationTime: window.preparationTime,
        familiar: window.familiar,
        meats: window.meats,
        products: window.products
    };

    jQuery.post(BASE_URL + '/pages/save', {'client': clientData, 'settings': settings}, function (response) {
        //     window.clientCode = response.client.code;
        window.location = BASE_URL + 'summary/';
    }, "json");
}

function ftToCm(ft) {
    return Math.round(ft * 30.48);
}

function kgToLb(kg) {
    return Math.round((kg / 0.453592) * 10) / 10;
}

function lbToKg(lb) {
    return Math.round((lb * 0.453592) * 10) / 10;
}