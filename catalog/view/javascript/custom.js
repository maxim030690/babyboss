// ;(function($, win) {
//   $.fn.inViewport = function(cb) {
//      return this.each(function(i,el){
//        function visPx(){
//          var H = $(this).height(),
//              r = el.getBoundingClientRect(), t=r.top, b=r.bottom;
//          return cb.call(el, Math.max(0, t>0? H-t : (b<H?b:H)));  
//        } visPx();
//        $(win).on("resize scroll", $.throttle(500, visPx));
//      });
//   };
// }(jQuery, window));

$(document).ready(function(){

	// (function anim(){
	// 	var anim = $('.anim');
	// 	if (anim.length <= 0)
	// 		return;
	//     $(".anim").each(function() {
	//         var $this = $(this),
	//         data_anim = $this.attr('data-anim'),
	//         data_delay = $this.attr('data-delay');
	//         $this.inViewport(function(px){
	//             if(px) {
	//                 $this
	//                     .css({
	//                         '-webkit-animation-delay': data_delay+'s',
	//                         '-moz-animation-delay': data_delay+'s',
	//                         'animation-delay': data_delay+'s'
	//                     })
	//                     .addClass('animated ' + data_anim);
	//             }
	//         });
	//     });
	// }());

	(function mob_menu_toggle(){
		var mob_menu_toggle = $('.mob_menu_toggle');
		if (mob_menu_toggle.length <= 0)
			return;
		$('.mob_menu_toggle').on('click', function () {
			$('.mob_menu_wr').toggleClass('open');
		});
	}());

	(function select22(){
		var select22 = $('select');
		if (select22.length <= 0)
			return;
		 $("select").select2({
				templateResult: addUserPic,
		        templateSelection: addUserPic
		});
			
		function addUserPic (opt) {
			if (!opt.id) {
				return opt.text;
			}               
			var optimage = $(opt.element).data('image'); 
			if(!optimage){
				return opt.text;
			} else {
				var $opt = $(
				'<span class="userName"><img src="' + optimage + '" class="userPic" /> ' + $(opt.element).text() + '</span>'
				);
				return $opt;
			}
		};
	}());

	(function datepicker(){
		var datepicker = $('.datepicker');
		if (datepicker.length <= 0)
			return;
		datepicker.datepicker({
			format: 'mm.dd.yyyy',
		});
	}());

});