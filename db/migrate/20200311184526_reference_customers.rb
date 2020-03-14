class ReferenceCustomers < ActiveRecord::Migration[5.2]
  def change
    add_reference :customers, :users, foreign_key: true
  end
end
