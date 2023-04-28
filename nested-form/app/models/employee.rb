class Employee < ApplicationRecord
  has_many :projects, dependent: :destroy
  accepts_nested_attributes_for :projects, reject_if: :all_blank, allow_destroy: true, reject_if: ->(attrs) {attrs['name'].blank? }
end
