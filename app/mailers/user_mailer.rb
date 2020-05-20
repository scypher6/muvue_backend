class UserMailer < ApplicationMailer
 def sample_email(user)
        @user = user
        mail(to: @user.email, subject: 'Muvue: Thank you for signing up!')
        # to: 'myEmail@gmail.com'
  end
end
