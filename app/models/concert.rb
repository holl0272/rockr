# == Schema Information
#
# Table name: concerts
#
#  id           :integer          not null, primary key
#  name         :string(255)
#  concert_date :date
#  venue_id     :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class Concert < ActiveRecord::Base
  attr_accessible :name, :concert_date, :venue_id
  belongs_to :venue
end
