class DeleteRefs < ActiveRecord::Migration[5.2]
  def change
    drop_table :refs
  end
end