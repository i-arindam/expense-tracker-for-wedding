class Expense < ApplicationRecord
  belongs_to :wedding

  validate :wedding_is_not_null
  validate :payable_by_is_not_empty
  validate :payable_by_belongs_to_wedding

  private

  def wedding_is_not_null
    errors.add(:base, "wedding is empty") if wedding_id.blank?

    @wedding = Wedding.find wedding_id

    errors.add(:base, "wedding not found") unless @wedding
  end

  def payable_by_is_not_empty
    errors.add(:base, "payable by is required") if payable_by_id.blank?
  end

  def payable_by_belongs_to_wedding
    @payable_by = User.find payable_by_id
    errors.add(:base, "payable by is outside this wedding") if @payable_by.wedding != @wedding
  end
end
