ActiveRecord::Schema.define(version: 1) do

  create_table :users, force: :cascade do |t|
    t.binary :uxid, null: false, limit: 26, index: { unique: true }
    t.string :name
    t.timestamps null: false
  end

end
