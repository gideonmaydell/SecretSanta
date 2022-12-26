class AddTargetColumnToParticipants < ActiveRecord::Migration[7.0]
  def change
    add_column :participants, :target, :string, default: nil
  end
end
