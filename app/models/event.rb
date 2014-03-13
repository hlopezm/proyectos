class Event < ActiveRecord::Base
#  validates :name, presence: true
  # validates_presence_of :name
  # validates_length_of :name, maximum: 60
  belongs_to :user

  validates :name, presence: true, length: { maximum: 60 }

  #validates :description, length: { minimum: 100, if: :description_present? }

  validates_length_of :description, minimum: 100, allow_blank: true

  validates :user, presence: true

  validate :start_at_is_present

  def self.for_today
    where(["DATE(start_at) = ?", Date.today])
#    where(start_at: Date.today, end_at: 1.day.from_now, description: ["hi", "hello"])
  end

  # scope :already_started, lambda {
  #   where(["start_at < ?", Time.now])
  # }

  # scope :name_like, lambda { |name|
  #   where(["name like ?", "%#{name}%"])
  # }

  # def self.description_like(description)
  #   where(["description like ?", "%#{description}%"])
  # end

  # private

  # def description_present?
  #   description.present?
  # end

  private

  def start_at_is_present
    if start_at.blank?
      errors.add(:start_at, "debes introducir la fecha de inicio")
    end
  end
end
