# README

# 概要
テックキャンプの最終課題にて作成したフリーマーケットアプリケーション。

# 開発環境
開 発 環 境：Ruby/Ruby on Rails/MySQL/Github/AWS/Visual Studio Code/haml&Scss<br>
開 発 期 間：約3.5週間<br>
平均作業時間：約10時間<br>
開 発 体 制：人数5名、アジャイル型開発（スクラム）、Trelloによるタスク管理<br>

# 本番環境

URL 18.180.92.127 <br>
ID: team-b<br>
PASS: 0000<br>

テスト用アカウント<br>

<購入者用><br>
▶︎メールアドレス: buyer_user@gmail.com<br>
▶︎パスワード: buyer_user<br>
▶︎購入用カード情報／番号：4242424242424242／期限：01/29／セキュリティコード：123<br>

<出品者用<><br>
▶︎メールアドレス名: seller_user@gmail.com<br>
▶︎パスワード: seller_user<br>

# 動作方法確認

Chromeの最新版を利用してアクセスしてください。ただしデプロイ等で接続できないタイミングもございます。その際は少し時間をおいてから接続ください。<br>

接続先およびログイン情報については、上記の通りです。なお、同時に複数の方がログインしている場合に、ログインできない可能性がございます。<br>

●出品方法は以下の手順で確認できます<br>
テストアカウントでログイン→トップページから出品ボタン押下→商品情報入力→商品出品<br>

●購入方法は以下の手順で確認できます<br>
テストアカウントでログイン→トップページ下部から商品選択→商品購入<br>

●確認後、ログアウト処理をお願いします。<br>

# 担当箇所
・ デプロイ、Basic認証などの本番環境関連
・ 商品出品ページフロントエンド・サーバーサイド 

![demo]</br>
(https://github.com/itokeso/freemarket_app_71b.wiki.git8c0d32b..999b170)


## usersテーブル
|Column|Type|Options|
|------|----|-------|
|nickname|string|null: false|
|email|string|null: false|
|password|string|null: false|
|password_confirmation|string|null: false|
|last_name|string|null: false|
|first_name|string|null: false|
|last_name_kana|string|null: false|
|first_name_kana|string|null: false|
|birth_year|string|null: false|
|birth_month|string|null: false|
|birth_day|string|null: false|
|phone_number|integer||

### Association
- has_many :items
- has_one  :card
- has_many :addresses

## cardsテーブル  
|Column|Type|Options|
|------|----|-------|
|user_id|integer|null: false|
|customoer_id|integer|null: false|
|card_id|integer|null: false|

### Association
- belongs_to :user

## addressesテーブル
|Column|Type|Options|
|------|----|-------|
|user_id|integer|null: false, foreign_key: true|
|postcode|string|null:false|
|prefecture_id|integer|null: false|
|city|string|null: false|
|block|string|null: false|
|apartment_number|string||
### Association
- belongs_to :user


## itemsテーブル  
|Column|Type|Options|
|------|----|-------|
|user_id|integer|null: false, foreign_key: true|
|category_id|integer|null: false, foreign_key: true|
|buyer_id|integer|null: false|
|seller_id|integer|null: false|
|name|string|null: false|
|brand|string|null: false|
|content|text|null: false|
|status|string|null: false|
|price|integer|null: false|
|cost|string|null: false|
|date|string|null: false|

### Association
- belongs_to :user
- belongs_to :category
- has_many :images


## imagesテーブル
|Column|Type|Options|
|------|----|-------|
|item_id|integer|null: false, foreign_key: true|
|image|text|null: false|
## Association
- belongs_to :item


## categoriesテーブル   
|Column|Type|Options|
|------|----|-------|
|name|string||
|ancestry|string||

## Association
- has_many :items
- has_ancestry
