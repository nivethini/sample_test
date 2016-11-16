class CreateApiV1UserDeviceInfos < ActiveRecord::Migration[5.0]
  def change
    create_table :api_v1_user_device_infos do |t|
      t.references :user, foreign_key: true
      t.string :os
      t.string :device_type
      t.string :device_model
      t.string :system_version
      t.string :app_version
      t.string :device_locale
      t.string :bundle_device

      t.timestamps
    end
  end
end
