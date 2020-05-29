<noscript id="deferred-styles">
	<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Karla" type="text/css"/>
</noscript>

<script src="<?= base_url('assets/frontend/js/app273a.js') ?>" type="text/javascript"></script>
<script type="text/javascript">

	$('.e-btn-readmore').click(function () {
		$(this).hide()
		$('.story-block .e-description').addClass('is-open')
	});

	$.ajaxSetup({
		headers: {
			'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
		}
	});

	$(document).ready(function () {
		$('.scroll-btn').click(function () {
			$([document.documentElement, document.body]).animate({
				scrollTop: $("#summary-footer").offset().top - 20
			}, 1000);
		});

		$('.story-scroll').click(function () {
			$([document.documentElement, document.body]).animate({
				scrollTop: $(".gender-buttons").offset().top - 50
			}, 800);
		});

		$('.gender-buttons .btn').click(function () {
			window.gender = $(this).data('gender');
			window.location = "<?= base_url('quiz2/') ?>"+window.gender;
		});



		$("input[type='button']").click(function(){
			var radioValue = $("input[name='gender']:checked").val();
			if(radioValue == 'Male'){
				window.location = "<?= base_url('quiz2/male') ?>";
			}
			if(radioValue == 'Female'){
				window.location = "<?= base_url('quiz2/female') ?>";
			}
		});
	});
</script>

<script src="<?= base_url('assets/frontend/js/js.cookie.min.js') ?>" type="text/javascript"></script>
<script type="text/javascript">
	function getParameterByName(name) {
		name = name.replace(/[\[]/, "\[").replace(/[\]]/, "\]");
		var regex = new RegExp("[\?&]" + name + "=([^&#]*)"),
		results = regex.exec(location.search);
		return results === null ? "" : decodeURIComponent(results[1].replace(/\+/g, " "));
	}

	$(document).ready(function () {
		if (getParameterByName('utm_source') == 'tapstone' || Cookies.get('utm_source') == 'tapstone') {
			if (Cookies.get('utm_source') == undefined) {
				Cookies.set('utm_source', 'tapstone', {expires: 7});
			}
			$('body').append('<iframe src="https://click.clktraker.com/aff_goal?a=l&goal_id=786" scrolling="no" frameborder="0" width="1" height="1"></iframe>');
		}
	});
</script>
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
	<script src="<?= base_url('assets/frontend/js/rocket-loader.min.js') ?>" data-cf-settings="95c3c5c99d82cfdd525634e1-|49" defer=""></script>
	<script defer src="<?= base_url('assets/frontend/js/beacon.min.js') ?>" data-cf-beacon='{"rayId":"58d9dd39699be291","version":"2020.3.0","startTime":1588507673186}'></script>
</body>
</html>