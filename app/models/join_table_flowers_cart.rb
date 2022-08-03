class JoinTableFlowersCart < ApplicationRecord
  belongs_to :cart
  belongs_to :flower
end
