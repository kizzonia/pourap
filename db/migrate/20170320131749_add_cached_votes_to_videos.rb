class AddCachedVotesToVideos < ActiveRecord::Migration[5.0]
  def self.up
      add_column :videos, :cached_votes_total, :integer, :default => 0
      add_column :videos, :cached_votes_score, :integer, :default => 0
      add_column :videos, :cached_votes_up, :integer, :default => 0
      add_column :videos, :cached_votes_down, :integer, :default => 0
      add_index  :videos, :cached_votes_total
      add_index  :videos, :cached_votes_score
      add_index  :videos, :cached_votes_up
      add_index  :videos, :cached_votes_down
    end

    def self.down
      remove_column :videos, :cached_votes_total
      remove_column :videos, :cached_votes_score
      remove_column :videos, :cached_votes_up
      remove_column :videos, :cached_votes_down
    end
end
