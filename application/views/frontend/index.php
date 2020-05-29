<div id="landing">
    <div class="container">
        <img src="<?= base_url('assets/frontend/images/keto-diet-logo.png') ?>" alt="KetoCycle.Diet" class="regular-logo" />
        <h1>
            Find out how much weight<br> you can lose with Keto diet
        </h1>
        <div class="gender-description">
            Select your gender:
        </div>
        <div class="gender-buttons">
            <!--<button class="btn btn-male" data-gender="male">
                <span class="icon"><i class="male"></i></span>
                Men click here
                <i class="forward-male forward" class="forward"></i>
            </button>
            <button class="btn btn-female" data-gender="female">
                <span class="icon"><i class="female"></i></span>
                Women click here
                <i class="forward-female forward"></i>
            </button>-->

            <div id="gender-select">
                <a href="<?= base_url('quiz2/male') ?>">
                    <label id="gender-male-label" for="gender-male" class="radio-label">
                        Male                        
                    </label> 
                </a>
                <span>OR</span> 
                <a href="<?= base_url('quiz2/female') ?>">
                    <label id="gender-female-label" for="gender-female" class="radio-label">
                        Female                        
                    </label>
                </a>
            </div>
            
            <div class="gender-disclaimer"></div>
        </div>
        <div class="row">
            <div class="col-xs-6 links col-lg-4">
                <a href="blog.html">Blog</a>
                <a href="faq.html">F.A.Q</a>
                <a href="reviews.html">Reviews</a>
                <a href="general-conditions.html">General conditions</a>
                <a href="data-protection-policy.html">Data protection policy</a>
                <a href="contacts.html">Contact us</a>
            </div>
            <div class="col-xs-12 recover-plan">
                <a href="<?= base_url('panel')?>" class="btn-primary plan-recovery-btn">Access my plan</a>
            </div>
            <div class="col-xs-6 col-lg-4">
                <img src="<?= base_url('assets/frontend/images/keto-diet-logo.png') ?>" class="footer-logo" />
            </div>
            <div class="col-xs-12 col-lg-4 copyright">
                2020 &copy; All rights reserved
                <div class="disclaimer">
                    DISCLAIMER: Results may vary from person to person. Our service is not intended to diagnose, treat, cure or prevent any disease and does not constitute medical advice.
                </div>
            </div>
        </div>
    </div>
</div>
      
        
