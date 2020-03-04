class UserMailer < ApplicationMailer
 def sample_email(user)
        @user = user
        mail(to: 'joseph.pyram@gmail.com', subject: 'Muvue: Thank you for signing up!')
        # @user.email
  end
end
