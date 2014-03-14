class Event < ActiveRecord::Base
  belongs_to :user

  validates :name, presence: true, length: { maximum: 60 }

  validates_length_of :description, minimum: 100, allow_blank: true

  validates :user, presence: true

  validate :start_at_is_present

  def self.for_today
    where(["DATE(start_at) = ?", Date.today])
  end

  scope :name_like, lambda { |name|
    where(["name like ?", "%#{name}%"])
  }

  private

  def start_at_is_present
    if start_at.blank?
      errors.add(:start_at, "debes introducir la fecha de inicio")
    end
  end
end
