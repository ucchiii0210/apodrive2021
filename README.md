
# テーブル設計

## users テーブル

| Column             | Type       | Options                       |
| ------------------ | ---------- | ----------------------------- |
| email              | string     | null: false,unique: true      |
| encrypted_password | string     | null: false                   |
| nickname           | string     | null: false                   |


### orders テーブル

| Column        | Type       | Options                       |
| ------------- | ---------- | ----------------------------- |
| order_number  | string     | null:false                    |
| name          | string     | null:false                    |
| postal        | string     | null:false                    |
| tell          | string     | null:false                    |
| address       | string     | null:false                    |
| delivery      | integer    |                               |
| ampm_id       | integer    |                               |
| driver_id     | integer    |                               |
| text          | text       |                               |
| apointer      | string     |                               |
