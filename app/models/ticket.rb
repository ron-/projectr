# == Schema Information
#
# Table name: tickets
#
#  id          :integer          not null, primary key
#  theater_id  :integer
#  seat_number :integer
#  user_id     :integer
#  price       :integer          default(10)
#  is_bought   :boolean          default(FALSE)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Ticket < ActiveRecord::Base
  attr_accessible :theater_id, :seat_number, :user_id, :price, :is_bought
  belongs_to :user, :inverse_of => :tickets
  belongs_to :theater, :inverse_of => :tickets
end
