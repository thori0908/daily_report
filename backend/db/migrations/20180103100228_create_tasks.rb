Hanami::Model.migration do
  change do
    create_table :tasks do
      primary_key :id
      foreign_key :daily_report_id, :daily_reports, on_delete: :cascade, null: false
      foreign_key :project_id,      :projects,      on_delete: :cascade, null: false
      column :time_spent, Integer, null: false

      column :created_at, DateTime, null: false
      column :updated_at, DateTime, null: false
    end
  end
end
