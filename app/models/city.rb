# == Schema Information
#
# Table name: cities
#
#  id           :integer          not null, primary key
#  name         :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  country_code :string
#

class City < ActiveRecord::Base

	has_many :patients
	accepts_nested_attributes_for :patients


   def self.search(search)
    where("country_code like '%#{search}%'  or name like '%#{search}%'")
  end

	
end
