<div id="landing">
    <div class="container">
        <img src="<?= base_url('assets/frontend/images/keto-diet-logo.png') ?>" alt="Keto Diet Simplified" class="regular-logo" />
        <h1>
            Find out how much weight<br> you can loose with Keto diet
        </h1>
        <h2 class="text-center">Take the Keto Quiz now</h2>
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
            
            <!--<div class="gender-disclaimer"></div>-->
        </div>
        
    </div>
</div>

<div class="main cm-footer">
    <div class="container">
        <div class="row">
            <div class="col-xs-6 links col-lg-4">
                <a href="<?= base_url('blog') ?>">Blog</a>
                <a href="<?= base_url('faq') ?>">F.A.Q</a>
                <a href="<?= base_url('general-conditions') ?>">General conditions</a>
                <a href="<?= base_url('contact') ?>">Contact us</a>
            </div>
            <div class="col-xs-12 recover-plan">
                <a href="<?= base_url('panel')?>" class="btn-primary plan-recovery-btn">Access my plan</a>
            </div>
            <div class="col-xs-6 col-lg-4">
                <img src="<?= base_url('assets/frontend/images/keto-diet-logo.png') ?>" class="footer-logo" width="300"/>
            </div>
            <div class="col-xs-12 col-lg-4 copyright">
                2016-2020 &copy; All rights reserved
                <div class="disclaimer">
                    DISCLAIMER: Results may vary from person to person. Our service is not intended to diagnose, treat, cure or prevent any disease and does not constitute medical advice.
                </div>
            </div>
        </div>
    </div>
</div>
      
        
