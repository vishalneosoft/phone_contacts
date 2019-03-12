// # Place all the behaviors and hooks related to the matching controller here.
// # All this logic will automatically be available in application.js.
// # You can use CoffeeScript in this file: http://coffeescript.org/
$(document).ready(function(){
  var count = 0;

  $(".number").on('click', function() {
    var num = ($(this).clone().children().remove().end().text());
    if (count < 10) {
      prev_value = $('#output').val();
      $("#output").val(prev_value + num.trim());
      count++
      if ($('#output').val()) {
        typingTimer = setTimeout(submitSearchForm, 500);
      }
    }
  });

  $('#clear').on('click', function() {
    $('#output').val('');
    count = 0;
    submitSearchForm();
  });

  $(document).on('click', '.contact-name', function() {
    var contact_id = $(this).attr('data-contact-id')
    var path = 'contacts/' + contact_id;
    $.ajax({
        url: path,
        method: 'GET',
        dataType: 'script'
    })
  });

  $('.close-contact').on('click', function() {
    $('.contact-detail').slideUp('slow');
    $('.close-contact').hide();
  })

  function submitSearchForm() {
    var path = 'contacts?' + $('form.search').serialize();
    $.ajax({
        url: path,
        method: 'GET',
        dataType: 'script',
    })
  };
});