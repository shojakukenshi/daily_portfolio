class CreateAddresses < ActiveRecord::Migration[5.2]
  def change
    create_table "addresses" do |t|
      t.integer "prefecture_id"
      t.integer "city_id"
      t.integer "street_id"
      t.string "zip_code", limit: 7
      t.string "prefecture"
      t.string "city"
      t.string "street"
      t.string "address_kyoto"
      t.string "address"
      t.string "prefecture_kana"
      t.string "city_kana"
      t.string "street_kana"
      t.boolean "is_business_place", default: false, null: false
      t.boolean "is_deleted", default: false, null: false
      t.datetime "created_at"
      t.datetime "updated_at"
      t.index ["city"], name: "index_addresses_on_city"
      t.index ["prefecture", "city", "street"], name: "index_addresses_on_prefecture_and_city_and_street"
      t.index ["zip_code"], name: "zip_code"
    end
  end
end
