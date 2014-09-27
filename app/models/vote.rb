class Vote < ActiveRecord::Base
  belongs_to :topic
  belongs_to :user
  
  validates :user_id, uniqueness: { scope: :topic_id, 
     message: "Only one vote per topic" }
end
