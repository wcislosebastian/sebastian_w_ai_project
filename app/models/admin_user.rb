class AdminUser < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable,
         :recoverable, :rememberable, :validatable, :registerable
  belongs_to :teacher, optional: true
  belongs_to :student, optional: true
  belongs_to :parent, optional: true

  after_create :send_email

  def send_email
    RestClient.get 'http://sebastian_w_lin_mailer_web_1:3001/submit_email'
  end
end
