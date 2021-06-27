class WelcomeUserMailer < ApplicationMailer
    def welcome_user_email(email, first_name, last_name, phone_number)
    
        @user = {email: email,first_name: first_name, last_name: last_name, phone_number: phone_number}
        p @user[:email]

        mail(to: @user[:email], subject: 'Welcome To iTranscript' )
    end
end
