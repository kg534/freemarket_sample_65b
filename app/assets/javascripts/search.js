// ページネーションについて
$(document).on('turbolinks:load', function(){
  // ページネーション(最後)・（次）表示
  if(!($(".first").length) && !($(".prev").length)){
    let removeNextText = $(".next").html();
    addNextText = removeNextText.replace("次 ›","");
    $(".next").html(addNextText);
    let removeLastText = $(".last").html();
    addLastText = removeLastText.replace("最後 »","");
    $(".last").html(addLastText);   
  } // ページネーション(最初)・（前）表示
    else if(!($(".next").length) && !($(".last").length)){
    let removeFirstText = $(".first").html();
    addFirstText = removeFirstText.replace("« 最初","");
    $(".first").html(addFirstText);
    let removePrevText = $(".prev").html();
    addPrevText = removePrevText.replace("‹ 前","");
    $(".prev").html(addPrevText);    
  } // ページネーション　全て表示
    else{
    let removeFirstText = $(".first__link").html();
    addFirstText = removeFirstText.replace("« 最初","");
    $(".first").html(addFirstText);
    let removePrevText = $(".prev").html();
    addPrevText = removePrevText.replace("‹ 前","");
    $(".prev").html(addPrevText);
    let removeNextText = $(".next").html();
    addNextText = removeNextText.replace("次 ›","");
    $(".next").html(addNextText);
    let removeLastText = $(".last").html();
    addLastText = removeLastText.replace("最後 »","");
    $(".last").html(addLastText);
  }
});