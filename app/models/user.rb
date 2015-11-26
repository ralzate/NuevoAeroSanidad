# == Schema Information
#
# Table name: users
#
#  id                              :integer          not null, primary key
#  email                           :string           not null
#  first_name                      :string
#  second_name                     :string
#  first_surname                   :string
#  second_surname                  :string
#  type_document                   :integer
#  document                        :string
#  medical_record                  :string
#  rol_id                          :integer
#  crypted_password                :string
#  salt                            :string
#  created_at                      :datetime
#  updated_at                      :datetime
#  name                            :string
#  remember_me_token               :string
#  remember_me_token_expires_at    :datetime
#  reset_password_token            :string
#  reset_password_token_expires_at :datetime
#  reset_password_email_sent_at    :datetime
#  activation_state                :string
#  activation_token                :string
#  activation_token_expires_at     :datetime
#  picture                         :string
#  admin                           :boolean          default(FALSE)
#  failed_logins_count             :integer          default(0)
#  lock_expires_at                 :datetime
#  unlock_token                    :string
#  last_login_at                   :datetime
#  last_logout_at                  :datetime
#  last_activity_at                :datetime
#  last_login_from_ip_address      :string
#

class User < ActiveRecord::Base
  authenticates_with_sorcery!
  acts_as_messageable
  has_many :products, dependent: :destroy
  has_many :clinic_histories, dependent: :destroy
     has_many :clinic_histories

  before_save { self.email = email.downcase }
  mount_uploader :picture, PictureUploader


  EMAIL_REGEX = /\A[A-Z0-9._%+-]+@[A-Z0-9.-]+\.[A-Z]{2,4}\z/i
  PASSWORD_REGEX = /\A(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*(_|[^\w])).+\z/


  # validates :email, :presence => true, :uniqueness => true, :format => EMAIL_REGEX
  validates :password, :presence  => true, :confirmation => true, :on => :update


  validates :password, presence: true, length: { minimum: 3 }, confirmation: true, if: :new_user?
  # validates :email, uniqueness: true, email_format: { message: 'has invalid format' }
  validates :names, presence: true, length: { minimum:4 }

   def self.search(search)
    where("first_name like '%#{search}%'  or second_name like '%#{search}%' 
    or first_surname like '%#{search}%'  or second_surname like '%#{search}%' 
    or email like '%#{search}%' or document like '%#{search}%'")
   end



  class << self
    def current_users
      where("#{sorcery_config.last_activity_at_attribute_name} IS NOT NULL") \
      .where("#{sorcery_config.last_logout_at_attribute_name} IS NULL
      OR #{sorcery_config.last_activity_at_attribute_name} > #{sorcery_config.last_logout_at_attribute_name}") \
      .where("#{sorcery_config.last_activity_at_attribute_name} > ? ", sorcery_config.activity_timeout.seconds.ago.utc.to_s(:db))
    end
  end

  def mailboxer_email(object)
    #Check if an email should be sent for that object
      #if true
        return email
      #if false
        #return nil
    end


  private

  def new_user?
    new_record?
  end

  def picture_size
    if picture.size > 5.megabytes
      errors.add(:picture, "should be less than 5MB")
    end
  end

end