// window.onload(function(){
// 	var s1=document.getElementById("ss");
// 	s1.onclick=function(){
// 		alert("提交成功");
// 	}
		
// 	})

$(document).ready(function(){
//������Ӱ�ť�����¼�
    $(".plus").click(function(){
        var num = $(this).parent().children("span");
//��Ʒ��������
        num.text(parseInt(num.text())+1);
//��Ʒ��������
        var totalNum = parseInt($(".totalNum").text());
        totalNum++
        $(".totalNum").text(totalNum);
//�����ܼ�
        var goods_price = parseInt($(this).parent().parent().children(".goods_price").text());
        $(".totalPrice").text(parseInt($(".totalPrice").text())+goods_price);
    });

//������ٰ�ť�����¼�
     $(".minus").click(function(){
        var num = $(this).parent().children("span");
        if(parseInt(num.text())){
        num.text(parseInt(num.text())-1);
        var totalNum = parseInt($(".totalNum").text());
        totalNum--
        $(".totalNum").text(totalNum);
        var goods_price = parseInt($(this).parent().parent().children(".goods_price").text());
        $(".totalPrice").text(parseInt($(".totalPrice").text())-goods_price);
    } else{
        num.text("0");
    }
    });
 });