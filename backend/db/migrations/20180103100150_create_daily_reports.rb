Hanami::Model.migration do
  change do
    create_table :daily_reports do
      primary_key :id
      column :submitted_at, DateTime, null: false

      column :created_at, DateTime, null: false
      column :updated_at, DateTime, null: false
    end
  end
end
