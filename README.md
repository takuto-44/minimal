# MINIMAL
## Concept
### 「ライフスタイルをミニマルに。〜いらない物をリスト化しよう！〜」
![スクリーンショット 2020-04-27 11 11 57](https://user-images.githubusercontent.com/59508944/80783538-153ecc80-8bb5-11ea-8e7a-f1231f95410b.png)

## Made by Takuto Hoshi
- [Twitter](https://twitter.com/takuto_44)
- [Blog](http://takuto44.hatenablog.com)

## How to use

見つけた瞬間、思いついた瞬間にいらない物を投稿しリスト化することができるアプリケーションとなっております。
いつでもリストを参考に掃除や荷物の整理にお役立てください！
簡易アカウント作成、ログイン機能付きです。

## Why
- SNSが発達し誰でも簡単に物や情報を手に入れることができるようになった時代。私は自分の価値観や大事なものを見失っている人が多いように感じ始め、「物が溢れている」この現象の手助けになるようなアプリケーションを作りたいと思いから今回「MINIMAL」といういらない物リスト作成アプリを作成しました。

## DEMO
![MINIMAL_DEMO](https://user-images.githubusercontent.com/59508944/82638114-1e194000-9c41-11ea-8d46-f0378810e171.gif)

## Commitment
- 「簡単にいつでも投稿すること」がコンセプトにあるためなるべく無駄な機能を実装せず基本的な機能のみ、シンプルなデザインを意識し設計することを工夫しました。

## Development environment
- 使用言語 HTML・CSS・JavaScript・Ruby
- フレームワーク Rails・jQuery
- DB言語 MySQL
- デプロイ Git・GitHub・AWS

## task
- 最低限必要な機能のみの実装をしたため、アカウント編集、いいねなどの現在使われているメジャーな機能の実装にも今後取り組んでいきたいです。

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