class AddReferenceCartItem < ActiveRecord::Migration[7.0]
  def change
    add_reference :cartitems, :cart, foreign_key: true
    add_reference :cartitems, :product, foreign_key: true
  end
end
