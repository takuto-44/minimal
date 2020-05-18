# MINIMAL
## Concept
### 「ライフスタイルをミニマルに。〜いらない物をリスト化しよう！〜」
![スクリーンショット 2020-04-27 11 11 57](https://user-images.githubusercontent.com/59508944/80783538-153ecc80-8bb5-11ea-8e7a-f1231f95410b.png)

## Usage

見つけた瞬間、思いついた瞬間にいらない物を投稿しリスト化することができるアプリケーションとなっております。
いつでもリストを参考に掃除や荷物の整理にお役立てください！
簡易アカウント作成、ログイン機能付きです。

## Made by Takuto Hoshi
- ![Twitter](https://twitter.com/takuto_44)
- ![Blog](http://takuto44.hatenablog.com)

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