# == Schema Information
#
# Table name: goals
#
#  id         :integer          not null, primary key
#  content    :string(255)      not null
#  ppublic    :boolean          not null
#  completion :boolean          not null
#  user_id    :integer
#  created_at :datetime
#  updated_at :datetime
#

class Goal < ActiveRecord::Base
  validates :content, :user_id, presence: true
  validates :ppublic, :completion, inclusion: [true, false]
  belongs_to :user
end
