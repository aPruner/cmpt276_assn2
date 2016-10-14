class Tokimon < ApplicationRecord
  belongs_to :trainer

  validates(:name, presence: true)
  validates(:height, presence: true)
  validates(:weight, presence: true)
  validates(:fly, presence: true)
  validates(:fight, presence: true)
  validates(:fire, presence: true)
  validates(:water, presence: true)
  validates(:electric, presence: true)
  validates(:ice, presence: true)
  validates(:total, presence: true)
  validates(:trainer_id, presence: true)

  def self.set_total(toki)
    toki.total = toki.fly + toki.fight + toki.fire + toki.water + toki.electric + toki.ice
  end
end
