# == Schema Information
#
# Table name: projects
#
#  id          :bigint           not null, primary key
#  description :string
#  title       :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
class Project < ApplicationRecord
  has_many :posts
end