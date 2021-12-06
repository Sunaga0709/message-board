class Message < ApplicationRecord
  validates :context, presence: true, length: {maximum: 30}
  validates :title, presence: true, length: {maximum: 20}
end
