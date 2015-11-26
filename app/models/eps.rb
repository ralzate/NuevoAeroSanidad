# == Schema Information
#
# Table name: epses
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Eps < ActiveRecord::Base
   has_many :clinic_histories
   has_many :patients

	accepts_nested_attributes_for :clinic_histories

validates :name, presence: true



   def self.search(search)
    search.present? ? where(["name LIKE ?" ,"%#{search}%"]) : all
  end

end
