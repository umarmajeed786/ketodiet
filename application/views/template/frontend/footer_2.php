</div>

<noscript id="deferred-styles"> 

    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Karla" type="text/css"/>

    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lato" type="text/css"/>

    <link rel="stylesheet" href="<?= base_url('assets/frontend/css/line-awesome.css') ?>" type="text/css"/>

</noscript>



<script src="<?= base_url('assets/frontend/js/app273a.js') ?>" type="text/javascript"></script>

<script src="<?= base_url('assets/frontend/js/jquery.min.js') ?>" type="text/javascript"></script>

    <script> var  default_url= '<?= base_url()?>'</script>
<script src="<?= base_url('assets/frontend/js/custom.js') ?>" type="text/javascript"></script>

<?php if($this->uri->segment(2)=='male'){ ?>

<script src="<?= base_url('assets/frontend/js/male.js') ?>" type="text/javascript"></script>

<?php }else{ ?>

<script src="<?= base_url('assets/frontend/js/female.js') ?>" type="text/javascript"></script>

<?php } ?>

<script src="<?= base_url('assets/frontend/js/loader/loader.js') ?>" type="text/javascript"></script>

<script type="text/javascript">

    var loadDeferredStyles = function () {

        var addStylesNode = document.getElementById("deferred-styles");

        var replacement = document.createElement("div");

        replacement.innerHTML = addStylesNode.textContent;

        document.body.appendChild(replacement)

        addStylesNode.parentElement.removeChild(addStylesNode);

    };

    var raf = window.requestAnimationFrame || window.mozRequestAnimationFrame ||

    window.webkitRequestAnimationFrame || window.msRequestAnimationFrame;

    if (raf) raf(function () {

        window.setTimeout(loadDeferredStyles, 0);

    });

        else window.addEventListener('load', loadDeferredStyles);

    </script>

    <script src="<?= base_url('assets/frontend/js/rocket-loader.min.js') ?>" data-cf-settings="0e94ad7dafe6cd5ededc0b9d-|49" defer=""></script>

<script type="text/javascript">
    jQuery(function() {
      jQuery('.nav-toggle').click(function() {
        jQuery('.navbar-nav').toggle();
      });
    })
</script>

</body>



    </html>

