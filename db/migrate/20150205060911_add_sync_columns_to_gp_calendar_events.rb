class AddSyncColumnsToGpCalendarEvents < ActiveRecord::Migration
  def change
    add_column :gp_calendar_events, :sync_source_host, :string
    add_column :gp_calendar_events, :sync_source_content_id, :integer
    add_column :gp_calendar_events, :sync_source_id, :integer
  end
end
