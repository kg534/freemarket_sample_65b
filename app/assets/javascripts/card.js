// クレジット登録画面 追加ボタン
// $(document).on('turbolinks:load', function() {
//   $('#add_form').click(function(){
//     if (response.error){
//       $(this).css({'background-color': '#3CCACE','color': '#fff'});
//     } else{
//       $(this).css({'background-color': '#333','color': '#f5f5f5', 'transition-timing-function':'ease-out', 'transition-duration':'3s'});
//     }
//   });
// });

// 追加ボタン Ajax
// $(function(){
//   $('.cards_register_form').on("click", function(e){
//     e.preventDefalut();
//     let formData = new FormData(this);
//     let url = $(this).attr('action');
//     $.ajax({
//       url: url,
//       type: 'POST',
//       data: formData,
//       dataType: 'json',
//       processData: false,
//       contentType: false
//     })
//     .done(function(data){
//       $('#add_form').prop('disabled', true);
//     })
//     .fail(function(){
//       alert('エラー');
//     })
//   })
// })