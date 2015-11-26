# == Schema Information
#
# Table name: arles
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Arl < ActiveRecord::Base

   has_many :clinic_histories
	accepts_nested_attributes_for :clinic_histories

	
  def self.search(search)
    where("name like '%#{search}%'")
  end
end
