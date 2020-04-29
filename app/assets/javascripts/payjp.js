// トークン取得のため
$(document).on('turbolinks:load', function() {
// pay.jpの公開鍵をセット
Payjp.setPublicKey('pk_test_9edd988d3221b201ff05be87');
//formのsubmitを止める
let form= $(".cards_register_form");
  $("#add_form").click(function(){
  // submitが完了する前に、formを止める
  form.find("input[type=submit]").prop("disabled", true);
  // submitが止められたので、pay.jpに必要な処理をする。

  // formで入力されたカード情報を取得
  let card ={
    number: parseInt($("#card_number").val()),
    exp_month: parseInt($("#exp_month").val()),
    exp_year: parseInt($("#exp_year").val()),
    cvc: parseInt($("#cvc").val())
  };

  // Payjpに登録するためのトークン作成
    Payjp.createToken(card, function(status, response){
      if(response.error){
        //エラーの場合は処理しない
        form.find('.payment-errors').text(response.error.message);
        form.find('button').prop('disabled', false);
        alert("カード情報が正しくありません")
        $('#add_form').prop('disabled', false);
      }
      else{
        //エラーなく進めた場合
        //formで取得したカード情報を削除して、Appにカード情報を残さない。
        $('#card_number').removeAttr("name");
        $('#exp_month').removeAttr("name");
        $('#exp_year').removeAttr("name");
        $('#cvc').removeAttr("name");
        let token = response.id;
        form.append($('<input type="hidden" name="payjpToken" />').val(token));
        form.get(0).submit();
        alert("登録完了しました")
      };
    });
  });
});
