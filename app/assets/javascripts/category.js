function ready(){

 $('.category_name').on('click', function(){

     // $('.display_course').toggleClass('hidden');
     $(this).next(".display_course").toggleClass('hidden')

  });

}

$(document).ready(function() {
  ready();
});



