class ReferenceBatteris < ActiveRecord::Migration[5.2]
  def change
    add_reference :batteris, :building, foreign_key: true
  end
end
