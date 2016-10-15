class Trainer < ApplicationRecord
  has_many :tokimons

  validates(:name, presence: true)
  validates(:level, presence: true)

  def self.set_level_default(train)
    train.level = 0
  end

  def self.update_level(train_id)
    trainer = Trainer.find(train_id)
    trainer.level = Tokimon.where(:trainer_id => train_id).length / 3
    trainer.save
  end
end
