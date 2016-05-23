class Patient < ActiveRecord::Base
  belongs_to :user
  validates :first_name, presence: true
  validates :phone, presence: true

  def name
    "#{first_name} #{last_name}".strip
  end
end
