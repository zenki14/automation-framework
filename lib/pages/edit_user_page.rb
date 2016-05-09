class EditUserPage
  include PageObject

  page_url 'http://ec2-54-191-181-182.us-west-2.compute.amazonaws.com/users/edit'

  link(:cancel_account, text: 'Cancel my account')
  link(:back, text: 'Back')

  text_field(:useremail, id: 'user_email')
  text_field(:userpassword, id: 'user_password')
  text_field(:userpasswordconfirmation, id: 'user_password_confirmation')
  text_field(:usercurrentpassword, id: 'user_current_password')
  button(:submit, id: 'user_submit')

  	def new_password_details (params = {})
  		useremail_element.when_present
  		#self.useremail = params[:useremail] || '@email'
  		self.userpassword = params[:userpassword] || 'Test1234'
  		self.userpasswordconfirmation = params[:userpasswordconfirmation] || 'Test1234'
  		self.usercurrentpassword = params[:usercurrentpassword] || 'Test123'
  		submit
  	end

  def cancel_and_confirm
    confirm(true) do
      cancel_account
    end
  end
end
