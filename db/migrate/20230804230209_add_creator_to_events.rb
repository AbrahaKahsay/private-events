class AddCreatorToEvents < ActiveRecord::Migration[7.0]
  def change
    add_reference :events, :creator, foreign_key: { to_table: :users, on_delete: :nullify }
  end
end
