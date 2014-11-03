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

require 'rails_helper'

RSpec.describe Goal, :type => :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
