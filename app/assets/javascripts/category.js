function ready(){

 $('body').on('click', '.category_name', function(){

     // $('.display_course').toggleClass('hidden');
     $(this).next(".display_course").toggleClass('hidden')
        
  });

}

$(document).ready(function() {
  ready();
});



