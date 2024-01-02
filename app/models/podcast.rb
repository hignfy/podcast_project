class Podcast < ApplicationRecord
  validates :title, presence: true
  validates :description, presence: true
  validates :external_link, format: { with: /\Ahttps?:\/\/\S+\z/, message: "must be a valid URL" }, allow_blank: true

  belongs_to :user
  has_one_attached :image
end
