 /*select 下拉*/
  $(document).ready(function() {
    $('.son_ul').hide(); //初始ul隐藏
    $('.select_box span').hover(function() { //鼠标移动函数
        $(this).parent().find('ul.son_ul').slideDown(200); //找到ul.son_ul显示
        $(this).parent().find('li').hover(function() {
            $(this).addClass('hover')
        },
        function() {
            $(this).removeClass('hover')
        }); //li的hover效果
        $(this).parent().hover(function() {},
        function() {
            $(this).parent().find("ul.son_ul").slideUp(200);
        });
    },
    function() {});
    $('ul.son_ul li').click(function() {
        $(this).parents('.select_box').find('span').html($(this).html());
        $(this).parents('.select_box').find('span').val($(this).html());
        $(this).parents('.select_box').find('ul').slideUp(200);
    });
    });