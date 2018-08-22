$(function() {
  $('a.add-expense').on('click', function(e) {
    $('.add-expense-modal')
      .modal({
        closable: false,
      })
      .modal('show')
    ;
  });
});
