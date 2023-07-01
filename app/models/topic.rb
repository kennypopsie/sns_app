class Topic < ApplicationRecord
  #validationを入力する
  #タイトル(title): 必須, 最大100文字以内
  validates :title, length: { maximum: 100 }, presence: true
  
  has_one_attached :image
end
