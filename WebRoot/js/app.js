$(function() {

	// Get the form.
	var form = $('#ajax-contact');

	// Get the messages div.
	var formMessages = $('#form-messages');

	// 为联系人表单设置一个事件监听器。
	$(form).submit(function(e) {
		// 停止浏览器提交表单。
		e.preventDefault();
		
		// 序列化表单数据
		var formData = $(form).serialize();
		
		// 使用AJAX提交表单。
		$.ajax({
			type: 'POST',
			url: $(form).attr('action'),
			data: formData
		})
		.done(function(response) {
			// 确保formMessages div有“success”类。
			$(formMessages).removeClass('error');
			$(formMessages).addClass('success');

			// 设置消息文本。
			$(formMessages).text(response);
					
			// 清晰的形式。
			$('#name').val('');			
			$('#phone').val('');			
			$('#message').val('');
		})
		.fail(function(data) {
			alert("fail");
			// 确保formMessages div有“error”类。
			$(formMessages).removeClass('success');
			$(formMessages).addClass('error');

			// 设置消息文本。
			if (data.responseText != '') {
				$(formMessages).text(data.responseText);
			} else {
				$(formMessages).text('哦!发生错误，您的消息无法发送。');
			}
		});

	});

});
