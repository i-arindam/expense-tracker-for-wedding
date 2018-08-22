$(function() {
  $('a.add-expense').on('click', function(e) {
    $('.add-expense-modal')
      .modal({
        closable: false,
        onApprove: function() {
          var $modal = $(this);
          var $form = $modal.find('form');
          $.ajax({
            url: $form.attr('action'),
            method: 'POST',
            dataType: 'json',
            data: $form.serialize(),
            success: function(data) {
              $modal.modal('hide');
            },
            error: function(data) {
              // @TODO: add captured errors to the modal display area
            }
          });


          return false;
        }
      })
      .modal('show')
    ;
  });
});
