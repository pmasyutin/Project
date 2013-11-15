class Post < ActiveRecord::Base
  attr_accessible :comment, :date, :statya, :summa
  validates :date, presence: true,
                    length: { minimum: 3 }
  validates :summa, presence: true,
                    length: { minimum: 2 }					
end
