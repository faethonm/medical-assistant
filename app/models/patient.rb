class Patient < ActiveRecord::Base
  belongs_to :user
  validates :first_name, presence: true
  validates :phone, presence: true
  default_scope -> { order(:first_name) }
  has_many :appointments

  def name
    "#{first_name} #{last_name}".strip
  end
end
