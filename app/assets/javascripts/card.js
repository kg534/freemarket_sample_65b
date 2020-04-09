// クレジット登録画面 追加ボタン
$(document).on('turbolinks:load', function() {
  $('.add_btn').click(function(){
    $(this).css({'background-color': '#333', 'transition-timing-function':'ease-out', 'transition-duration':'3s'});
    $('.add_btn__link').css({'color': '#f5f5f5','transition-timing-function':'ease-out', 'transition-duration':'3s'});
    });
});