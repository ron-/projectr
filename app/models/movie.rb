# == Schema Information
#
# Table name: movies
#
#  id           :integer          not null, primary key
#  name         :string(255)
#  poster       :text
#  big_img      :text
#  director     :string(255)
#  actors       :string(255)
#  release_year :string(255)
#  description  :text
#  runtime      :string(255)
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class Movie < ActiveRecord::Base
  attr_accessible :name, :poster, :big_img, :director, :actors, :release_year, :description, :runtime
  has_many :theaters, :inverse_of => :movie
end
