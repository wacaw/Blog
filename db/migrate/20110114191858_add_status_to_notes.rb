class AddStatusToNotes < ActiveRecord::Migration
    def self.up
        add_column :notes, :status, :integer, :default => 0
    end

    def self.down
        remove_column :notes, :status
    end
end
