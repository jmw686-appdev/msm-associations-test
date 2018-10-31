# == Schema Information
#
# Table name: movies
#
#  id          :integer          not null, primary key
#  title       :string
#  year        :string
#  duration    :integer
#  description :text
#  image_url   :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  director_id :integer
#

class Movie < ApplicationRecord
  validates :director_id, presence: true
  validates :title, presence: true, uniqueness: {scope: :year}
  validates :year, numericality: {less_than: 2050, greater_than: 1870}
  validates :duration, numericality: {less_than: 2764800, greater_than: 0},
            allow_blank: true
            
  belongs_to :director
  has_many :actors, :through => :characters
  has_many :characters
end
