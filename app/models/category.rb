class Category < ApplicationRecord
  has_many :products

  scope :roots, -> { where(:parent_id => [nil, ''])}

  has_many :children, class_name: "Category", foreign_key: "parent_id", dependent: :destroy
  belongs_to :root, class_name: "Category", foreign_key: "parent_id", optional: true

  def root?
    parent_id.blank?
  end
end
