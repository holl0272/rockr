# == Schema Information
#
# Table name: venues
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'spec_helper'

describe Venue do
  describe '.new' do
    it 'creates an instance of venue' do
      venue = Venue.new
      expect(venue).to be_an_instance_of(Venue)
    end
  end

  describe '.create' do
    it 'has an id' do
      venue = Venue.create
      expect(venue.id).to_not be nil
    end
  end

end
