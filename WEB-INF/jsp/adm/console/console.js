var webPath;
var paths = document.location.pathname.split("/");
if (paths[0] == '') {
    webPath = "/" + paths[1];
} else {
    webPath = "/" + paths[0];
}
$(function(){
    var message = $('input[name="message"]').val();
    if (message != '') {
        toastr['warning'](null, message);
    }
});

function changeSubdomainInput(obj) {
    var preV = $(obj).attr("data-value");
    var input = '<input type="text" class="form-control input_vhost" id="iptSubdomain" onblur="saveSubdomain(this)" pre-value="'+preV+'" maxlength="20" value="'+preV+'">';
    $(obj).parent().append(input);
    $(obj).remove();
}
function changeInput(obj) {
    var preV = $(obj).attr("data-value");
    var input = '<input type="text" class="form-control input_vhost" id="iptGithub" onblur="saveGithub(this)" pre-value="'+preV+'" maxlength="20" value="'+preV+'">';
    $(obj).parent().append(input);
    $(obj).remove();
}

/**
 * 保存二级域名
 * @param obj
 */
function saveSubdomain(obj){
    var subdomain = $(obj).val();
    if (subdomain == null || subdomain==''){
        toastr['warning'](null, '二级域名不能为空');
        return ;
    }
    var url = webPath + '/console/saveSubdomain';
    $.ajax({
        url : url,
        data: {subdomain: subdomain},
        error: function(e, h, r) {
            toastr['warning'](e, '保存二级域名失败');
        },
        success: function(data) {
            var json = eval(data);
            if (json.code != '000') {
                toastr['warning'](null, json.message);
            } else {
                toastr['success'](null, '保存二级域名成功');
                var a = '<label>'+$(obj).val()+'</label>';
                $(obj).parent().append(a);
                $(obj).remove();
                $('#linkGithub').html('imaidev');
            }
        }
        
    });
}

/**
 * 更新Github账号
 * @param obj
 */
function saveGithub(obj){
    var github_new = $(obj).val();
    if (github_new == null || github_new==''){
        $(obj).val($(obj).attr('pre-value'));
        return;
    }
    var url = webPath + '/console/updateGithub';
    $.ajax({
        url : url,
        data: {github_new: $(obj).val()},
        error: function(e, h, r) {
            toastr['warning'](e, '更新github账号失败');
        },
        success: function(data) {
            var json = eval(data);
            if (json.code != '000') {
                toastr['warning'](null, json.message);
            } else {
                toastr['success'](null, '更新github账号成功');
                var a = '<a onclick="changeInput(this)" data-value="'+$(obj).val()+'">'+$(obj).val()+'</a>';
                $(obj).parent().append(a);
                $(obj).remove();
            }
        }
    });
}