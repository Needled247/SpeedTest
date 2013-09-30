function webTest(){
    $("#urlTbl").show();
    $.getJSON("UrlJson",function(data){
        $("#tbody").html("");
        $.each(data.comments,function(i,item){
            var endTime;
            var startTime = new Date().getTime();
            $.ajax({
                type:'GET',
                async:false,
                url:item.url,
                success:function(){
                    endTime = new Date().getTime();
                },
                error:function(){
                    endTime = new Date().getTime();
                }
            });
            var result = endTime - startTime;
            if(result > 10000){
                result = '��ʱ';
            }
            var str = '';
            if(result<200){
                str='<span class="label label-success">�ܿ�</span>';
            }
            else if(result>200&&result<400){
                str='<span class="label label-info">��</span>';
            }
            else if(result>400&&result<600){
                str='<span class="label label-warning">����</span>';
            }
            else if(result>600){
                str='<span class="label label-important">һ��</span>';
            }
            else if(result=='��ʱ'){
                str='';
            }
            $("#tbody").append("<tr><td>"+item.name+"</td><td>"+item.url+"</td><td>"+result+"ms(����)&nbsp;"+str+"</td></tr>");
        })
    })
}