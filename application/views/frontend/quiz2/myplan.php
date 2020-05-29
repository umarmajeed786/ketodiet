
        <div class="desktop-container">
            <div class="container plan plan-recovery">
                <img src="<?= base_url('assets/frontend/images/logo.svg') ?>" alt="KetoCycle.Diet" class="regular-logo" />
                <h1 style="font-size:24px;">My plan</h1>
                <p>
                    If you already bought, but didn&#039;t receive your plan, lost your plan access link or face any other problem with your KetoCycle meal plan - enter your email address and we will provide you with a solution.
                </p>
                <input type="text" class="form-control email" placeholder="Enter your email address" />
                <div class="plan-status"></div>
                <button type="button" class="btn btn-sm btn-primary plan-lookup">Lookup my plan</button>
                <br />
            </div>
        </div>

        <script src="<?= base_url('assets/frontend/js/app273a.js') ?>" type="text/javascript"></script>
        <script type="text/javascript">
            $.ajaxSetup({
                headers: {
                    'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                }
            });

            $(document).ready(function () {
                $('.plan-lookup').click(function() {
                    $(this).html("Processing...");

                    var emailInput = $('.email').val();

                    if(!validateEmail(emailInput)) {
                        $('.email').addClass('has-error');
                        $('.plan-lookup').html('Lookup my plan');
                        return false;
                    }

                    $('.email').removeClass('has-error');

                    jQuery.post("<?= base_url('pages/lookup') ?>", {email:emailInput}, function(response) {
                        setTimeout(function() {
                            var planStatus = "paid";
                            if(response.status) {

                                if(response.planGenerated == 1) {
                                    $('.plan-status').html("<strong>Status:</strong> Good news! We have found your profile and your plan is ready. We&#039;ve just emailed the link to your plan to "+$('.email').val()+". If you do not receive it within the next 5 minutes or the link doesn&#039;t work - contact us at hello@demo.diet").fadeIn();
                                    setTimeout(function() {
                                        window.location = response.url;
                                    }, 2000);
                                }
                                if(response.planGenerated == 0) {    
                                    $('.plan-status').html("<strong>Status:</strong> We&#039;ve found your profile, but your plan is not yet ready. Our nutritionis are reviewing it. It takes up to 2 hours after order confirmation. As soon as your Keto meal plan is ready - we&#039;ll email it to you.").fadeIn();
                                    setTimeout(function() {
                                        window.location = response.url;
                                    }, 2000);
                                }                            
                                if(response.planGenerated < 0) {
                                    $('.plan-lookup').html('Lookup my plan');
                                    $('.plan-status').html("<strong>Status:</strong> We&#039;ve found your profile, but your plan is not ready. Some problems occured during the plan preparation (it might be due to incorrect data provided during signup). Sorry for the inconvenience. Please contact us at hello@demo.diet").fadeIn();
                                }
                            } else {
                                planStatus = "unpaid"
                                if(response.clientFound) {
                                    $('.plan-status').html("<strong>Status:</strong> We've found your profile, but it seems your payment didn't go through. To finish your signup - <a href='"+response.billing+"' target='_blank'>click here</a>. If you've been charged, please send your payment receipt to hello@demo.diet and we will look into it as soon as possible.").fadeIn();
                                    setTimeout(function() {
                                        window.location = response.url;
                                    }, 2000);
                                } else {   
                                    planStatus = "notfound";
                                    $('.plan-lookup').html('Lookup my plan');
                                    $('.plan-status').html("<strong>Status:</strong> Unfortunately, we couldn&#039;t find your profile. Make sure it&#039;s the same email you used during the signup. If you think the email is correct - please contact us at hello@demo.diet").fadeIn();
                                }
                            }

                            window.dataLayer.push({
                                'planStatus': planStatus,
                                'event': 'planLookedUp'
                            });

                        }, 1500);
                    }, "json");
                });
            });

function validateEmail(email) {
    var re = /^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
    return re.test(String(email).toLowerCase());
}
</script>
<script type="text/javascript">
    var loadDeferredStyles = function() {
        var addStylesNode = document.getElementById("deferred-styles");
        var replacement = document.createElement("div");
        replacement.innerHTML = addStylesNode.textContent;
        document.body.appendChild(replacement)
        addStylesNode.parentElement.removeChild(addStylesNode);
    };
    var raf = window.requestAnimationFrame || window.mozRequestAnimationFrame ||
    window.webkitRequestAnimationFrame || window.msRequestAnimationFrame;
    if (raf) raf(function() { window.setTimeout(loadDeferredStyles, 0); });
    else window.addEventListener('load', loadDeferredStyles);
</script>
