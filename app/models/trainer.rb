class Trainer < ApplicationRecord
  has_many :tokimons

  validates(:name, presence: true)
  validates(:level, presence: true)

  def self.set_level_default(train)
    train.level = 0
  end

  def self.update_level(train)
    num_tokimon = Tokimon.where(:trainer_id => trainer.id)
    train.level = num_tokimon.length / 3
  end
end
