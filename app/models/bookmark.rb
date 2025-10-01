class Bookmark < ApplicationRecord
  validates :title, presence: true, length: { maximum: 50 }
  validates :url, presence: true, format: { with: /\A#{URI::DEFAULT_PARSER.make_regexp(%w[http https])}\z/, message: "は有効なURLを入力してください" }
  validates :hiduke, presence: true
end
