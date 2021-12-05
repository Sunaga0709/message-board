class Message < ApplicationRecord
  validates :context, presence: true, length: {maximum: 30}
end
