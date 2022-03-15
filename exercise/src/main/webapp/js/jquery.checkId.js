function checkId(){
    var id = $('#id').val();
    $.ajax({
        url:'/idDuplChk.do',
        type:'post',
        data:{id:id},
        success:function(data){
            if($.trim(data)==0){
                $('#chkMsg').html("사용가능");                
            }else{
                $('#chkMsg').html("사용불가");
            }
        },
        error:function(){
                alert("에러입니다");
        }
    });
};
