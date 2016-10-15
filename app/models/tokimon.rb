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
  validates(:trainer_id, presence: true)

  def self.set_total(toki)
    toki.total = toki.fly + toki.fight + toki.fire + toki.water + toki.electric + toki.ice
    toki.save
  end

  def getAllAt(train)
    all_tokimons = Tokimon.where(:trainer_id => train.id)
    arr = Array.new()
    all_tokimons.each do |i|
      arr.push(i.name)
    end
    return arr
  end

end
