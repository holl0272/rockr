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

require 'spec_helper'

describe Concert do
  describe '.new' do
    it 'creates an instance of concert' do
      concert = Concert.new
      expect(concert).to be_an_instance_of(Concert)
    end
  end

  describe '.create' do
    it 'has an id' do
      concert = Concert.create
      expect(concert.id).to_not be nil
    end
  end
end
