## users table

|Column|Type|Options|
|------|----|-------|
|email|string|null: false|
|encrypted_password|string|null: false|

### Association
- has_many :items

## items table

|Column|Type|Options|
|------|----|-------|
|category_id|integer|null: false|
|thing|string|null: false|

### Association
- has_many :images
- belongs_to :user

## images table

|Column|Type|Options|
|------|----|-------|
|image|string|
|item|references|foreign_key: true|

### Association
- belongs_to :item