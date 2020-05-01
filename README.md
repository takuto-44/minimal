# MINIMAL
## concept
## 「ライフスタイルをミニマルに。〜いらない物をリスト化しよう！〜」
![スクリーンショット 2020-04-27 11 11 57](https://user-images.githubusercontent.com/59508944/80783538-153ecc80-8bb5-11ea-8e7a-f1231f95410b.png)

## Takuto Hoshi

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