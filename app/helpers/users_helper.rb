module UsersHelper
	def user_status(user)
		if current_user == user
			content_tag(:span, '', class: 'glyphicon glyphicon-ok color-success')
		else
			'Invitation Pending'
		end
	end
end
