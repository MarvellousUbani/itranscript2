class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  after_create :send_welcome


  has_one_attached :avatar
  has_many :feedbacks
  has_one_attached :upload

  validates_presence_of :first_name, :last_name, :email, :phone_number, :street_address, :avatar, :upload, :matriculation_number, :institution_sent, :department, :faculty, :senate_meeting_no, :date_of_award, :date_of_birth
  def send_welcome 
    WelcomeUserMailer.welcome_user_email(self.email, self.first_name, self.last_name, self.phone_number ).deliver_later
    begin
      Vonage.sms.send(from: 'Vonage APIs', to: self.phone_number, text: 'Welcome to iTranscript')
      
    rescue Vonage::Error

       false
      
    end

  end
 
end
