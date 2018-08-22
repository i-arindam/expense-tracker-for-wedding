$(function() {
  $('a.add-expense').on('click', function(e) {
    $('.add-expense-modal')
      .modal({
        closable: false,
        onApprove: function() {
          var $form = $(this).find('form');
          $.ajax({
            url: $form.attr('action'),
            method: 'POST',
            dataType: 'json',
            data: $form.serialize(),
            success: function(data) {
              console.log('returned expense ', data);
            }
          });


          return false;
        }
      })
      .modal('show')
    ;
  });
});
