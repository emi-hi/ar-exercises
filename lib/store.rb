
class Store < ActiveRecord::Base
  has_many:employees
  validates :name, presence: true, length: { minimum: 3 }
  validates :annual_revenue, numericality: { only_integer: true, greater_than:0}
  validate  :must_carry_apparel

  def must_carry_apparel
    unless mens_apparel? || womens_apparel?
      errors.add(:must_carry_mens_or_womens, "need men's or women's apparel")
    end
  end
end


