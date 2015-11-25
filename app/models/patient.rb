# == Schema Information
#
# Table name: patients
#
#  id             :integer          not null, primary key
#  city_id        :integer
#  first_name     :string
#  second_name    :string
#  first_surname  :string
#  second_surname :string
#  email          :string
#  type_document  :integer
#  document       :string
#  days_age       :integer
#  months_age     :integer
#  years_age      :integer
#  birthdate      :date
#  gender         :integer
#  profession     :string
#  blood_type     :integer
#  nacionality    :integer
#  address        :string
#  condition      :integer
#  user_id        :integer
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  country_code   :string
#

class Patient < ActiveRecord::Base
  belongs_to :eps
  belongs_to :arl
  belongs_to :city
  belongs_to :user
  has_many :clinic_histories
   has_many :progress_notes

  accepts_nested_attributes_for :city

validates :first_name, presence: { message: "Story title is required" }

   def self.search(search)
    where("first_name like '%#{search}%'  or second_name like '%#{search}%' 
    or first_surname like '%#{search}%'  or second_surname like '%#{search}%' 
    or email like '%#{search}%' or document like '%#{search}%' or address like 
    '%#{search}%'")


  end
end
