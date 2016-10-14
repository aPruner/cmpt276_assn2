class Trainer < ApplicationRecord
  has_many :tokimons

  validates(:name, presence: true)
  validates(:level, presence: true)
  validates(:num_tokimon, presence: true)

  def self.set_level(train)
    train.level = train.num_tokimon / 3
  end

  def self.add_tokimon(train)
  	train.num_tokimon += 1
  end
end
