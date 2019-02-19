function ready(){

  $('.category_name').click(function(){
    
    $('.display_course').toggleClass('hidden');
        
  });

}

$(document).ready(function() {
  ready();
});

$(document).on('turbolinks:load', function() {
  ready();
});