// カテゴリー ブランド タグ (hover)
$(document).on('turbolinks:load', function() {
  $('.nav_left__category--link , .nav_left__brand--link').hover(function(){
    $(this).css("color", "#FFCC66");},
  function(){
    $(this).css('color', '#333');
  });
});

// いいね！ タグ (hover)
$(document).on('turbolinks:load', function() {
  $('.nav_right__favorite--link').hover(function(){
    $('.nav_right__favorite--link, .fas.fa-heart').css('color', '#3CCACE');},
    function(){
      $(this).css('color', '#333'), $('.fas.fa-heart').css('color', '#ccc');
    });
});

// お知らせ タグ (hover)
$(document).on('turbolinks:load', function() {
  $('.nav_right__info--link').hover(function(){
    $('.nav_right__info--link, .far.fa-bell').css('color', '#3CCACE');},
    function(){
      $(this).css('color', '#333'), $('.far.fa-bell').css('color', '#ccc');
    });
});

// やることリスト タグ (hover)
$(document).on('turbolinks:load', function() {
  $('.nav_right__doing--link').hover(function(){
    $('.nav_right__doing--link, .fas.fa-check').css('color', '#3CCACE');},
    function(){
      $(this).css('color', '#333'), $('.fas.fa-check').css('color', '#ccc');
    });
});


// マイページ タグ (hover)
$(document).on('turbolinks:load', function() {
  $('.nav_right__mypage--link').hover(function(){
    $(this).css('color', '#3CCACE');},
    function(){
      $(this).css('color', '#333').css('color', '#ccc');
    });
});


// リンクバー FURIMA タグ (hover)
$(document).on('turbolinks:load', function() {
  $('.top_page_link').hover(function(){
    $(this).css('color', '#3CCACE');},
    function(){
      $(this).css('color', '#333');
      });
});

// リンクバー マイページ タグ (hover)
$(document).on('turbolinks:load', function() {
  $('.mypage_link').hover(function(){
    $(this).css('color', '#3CCACE');},
    function(){
      $(this).css('color', '#333');
      });
});


// サイド タブ  背景 (hover)
$(document).on('turbolinks:load', function() {
  $('.link_tab').hover(function(){
    let i = $('.link_tab').index(this);
    $('.link_tab').eq(i).css('background-color', '#fbfbfb');},
    function(){
      let i = $('.link_tab').index(this);
      $('.link_tab').eq(i).css('background-color', '#fff'); 
    });
});

// サイド タブ right-angle 色 (hover)
$(document).on('turbolinks:load', function() {
  $('.link_tab').hover(function(){
    let i = $('.link_tab').index(this);
      $('.fas.fa-angle-right').eq(i+2).css('color', '#333');},
      function(){
        let i = $('.link_tab').index(this);
        $('.fas.fa-angle-right').eq(i+2).css('color', '#ccc');
      });
  $('.select_tab').hover(function(){
    let i = $('.select_tab').index(this);
      $('.fas.fa-angle-right').eq(i+1).css('color', '#333');},
    function(){
      let i = $('.select_tab').index(this);
      $('.fas.fa-angle-right').eq(i+1).css('color', '#ccc');
    });
});

// サイド タブ right-angle 動き (hover)
$(document).on('turbolinks:load', function() {
  $('.link_tab').hover(function(){
    let i = $('.link_tab').index(this);
      $('.fas.fa-angle-right').eq(i+2).css({'transform':'translateX(4px)', 'transition-timing-function':'ease-out', 'transition-duration':'0.1s'});},
      function(){
        let i = $('.link_tab').index(this);
        $('.fas.fa-angle-right').eq(i+2).css({'transform':'translateX(0px)', 'transition-timing-function':'ease-out', 'transition-duration':'0.1s'});
      });
  $('.select_tab').hover(function(){
    let i = $('.select_tab').index(this);
      $('.fas.fa-angle-right').eq(i+1).css({'transform':'translateX(4px)', 'transition-timing-function':'ease-out', 'transition-duration':'0.1s'});},
    function(){
      let i = $('.select_tab').index(this);
      $('.fas.fa-angle-right').eq(i+1).css({'transform':'translateX(0px)', 'transition-timing-function':'ease-out', 'transition-duration':'0.1s'});
    });
});

// メインタブ アイコン 名前 アンダーバー
$(document).on('turbolinks:load', function() {
  $('.main_content__user-icon--link').hover(function(){
    $('.bold').css('text-decoration', 'underline');},
    function(){
      $('.bold').css('text-decoration', 'none');
    });
});

// メインタブ切り替え ボタン機能(お知らせ)
$(document).on('turbolinks:load', function() {
  $('.tab__info').click(function(){
    $('.active').removeClass('active');
    $(this).addClass('active');
    $('.action').removeClass('action');
    // クリックしたタブのインデックス番号取得
    let i = $(this).index();
    // クリックしたタブと同じインデックス番号を持つコンテンツを表示
    $('.container__info').eq(i).addClass('action');
  });
});


// 購入した商品 タブ 切り替え
$(document).ready(function() {
  $('.purchase_box__tab').click(function(){
    $('.choise').removeClass('choise');
    $(this).addClass('choise');
    $('.display').removeClass('display');
    // クリックしたタブのインデックス番号取得
    let i = $(this).index();
    // クリックしたタブと同じインデックス番号を持つコンテンツを表示
    $('.product__list').eq(i).addClass('display');
  });
});