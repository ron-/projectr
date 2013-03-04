# == Schema Information
#
# Table name: theaters
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  image      :text
#  movie_id   :integer
#  num_seats  :integer
#  company_id :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Theater < ActiveRecord::Base
  attr_accessible :name, :inage, :movie_id, :num_seats, :company_id
  has_many :tickets, :inverse_of => :theater
  belongs_to :company, :inverse_of => :theaters
  belongs_to :movie, :inverse_of => :theaters
end
