/* HTML document is loaded. DOM is ready. 
-------------------------------------------*/
$(function(){
  /* FlexSlider */
  $('.flexslider').flexslider({
      animation: "fade",
      directionNav: false,
      slideshowSpeed: 3000,
      slideDirection: "vertical"
  });
  // formuleavolonte list
wow = new WOW({
          animateClass: 'animated',
          offset: 100
      });
      wow.init();
      
});

