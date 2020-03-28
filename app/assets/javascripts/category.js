$(function(){
//カテゴリ表示
  $(".header-inner__navi__lists-left__category").hover(function(){
    $('.header-inner__navi__lists-left__category__tree').show(),
    $('.header-inner__navi__lists-left__category>a').css('color','#ffb340');
  },function(){
    $('.header-inner__navi__lists-left__category__tree').hide(),
    $('.header-inner__navi__lists-left__category>a').css('color','#333');
    $('.header-inner__navi__lists-left__category__tree__child__item__select').remove();
    $('.header-inner__navi__lists-left__category__tree__grandchild__item__select').remove();
  });
//子カテゴリーを追加
  function buildChildHTML(child){
    var html =`<a class="header-inner__navi__lists-left__category__tree__child__item__select" id="${child.id}"
                href="/categories/${child.id}">${child.name}</a>`;
    return html;
  }
  $(".header-inner__navi__lists-left__category__tree__parent__item__select").hover(function(){
    var id = this.id
    $(this).css('color','#ffb340');
    $('.header-inner__navi__lists-left__category__tree__child__item__select').remove();
    $('.header-inner__navi__lists-left__category__tree__grandchild__item__select').remove();
    $.ajax({
      type: 'GET',
      url: '/categories/new',
      data: {parent_id: id},
      dataType: 'json'
    }).done(function(children){
      children.forEach(function(child){
        var html = buildChildHTML(child);
        $(".header-inner__navi__lists-left__category__tree__child__item").append(html);
      })
    });
  },function(){
    $(this).css('color','#333');
  });

//孫カテゴリーを追加
  function buildGrandChildHTML(child){
    var html = `<a class="header-inner__navi__lists-left__category__tree__grandchild__item__select" id="${child.id}"
                href="/categories/${child.id}">${child.name}</a>`;
    return html;
  }

$(document).on({
  "mouseenter": function(){
    var id = this.id
    $('.header-inner__navi__lists-left__category__tree__grandchild__item__select').remove();
    $(this).css('color','#ffb340');
    $.ajax({
      type: 'GET',
      url: '/categories/new',
      data: {parent_id: id},
      dataType: 'json'
    }).done(function(children){
      children.forEach(function(child){
        var html = buildGrandChildHTML(child);
        $(".header-inner__navi__lists-left__category__tree__grandchild__item").append(html);
      })
    });
  },"mouseleave": function(){
    $(this).css('color','#333');
    }
  },".header-inner__navi__lists-left__category__tree__child__item__select");

  //孫カテゴリーカラー
  $(document).on({
  "mouseenter": function(){
    var id = this.id
    $(this).css('color','#ffb340');
  },"mouseleave": function(){
    $(this).css('color','#333');
    }
  },".header-inner__navi__lists-left__category__tree__grandchild__item__select");
});


