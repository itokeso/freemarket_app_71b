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
・ デプロイ、Basic認証などの本番環境関連<br>
・ 商品出品ページフロントエンド・サーバーサイド 

# 担当箇所詳細

▶︎ デプロイ、本番環境関連<br>
<概要><br>
アプリケーションをEC2のサーバにデプロイし全世界に公開状態にする<br><br>
使用技術はAWS、Ruby on Rails（5.2系）<br>
<担当内容><br>
基本となるroutes、controller、modelの設置<br>
carrierwaveというgemを使って画像のアップロードを実装<br>
Capistranoを利用した自動デプロイ<br>
S3の導入<br>
basic認証の実装<br>
本番環境でのテスト、エラー解決<br>

▶︎ 商品出品ページ<br>
<概要><br>
出品する商品の情報を登録できる<br>
<担当内容（サーバーサイド）><br>
activehashというgemを使ってのプルダウン表示選択機能実装<br>
モデルの設定（アソシエーション、バリデーション）<br>

# 開発を通じて得られた知見
工夫した点<br>
①チームとして工夫を行った点<br>
　工夫した点は４点あります。<br>
　１点目は、タスクの均等化です。個人の得意不得意が偏らないようにフロントマークアップとサーバーサイドを全員が経験できるように作業を分担しました。<br>
　２点目は、チーム間でのサポートです。機能が多い出品機能などは一人で担当せず複数人で担当し作業の重さが極端に重くならないように配慮し、進捗が遅いところは早めに終わっ  たメンバーがフォローを行い、全体の工程が遅れないようにチーム運営を行いました。<br>
　３点目は、本番環境確認です。完成した機能を本番環境にデプロイした際は、必ず各自でチェックをするようにしました。エラーなど、お互いにきちんと指摘しあうことをチームの指針の１つとしていたことが非常によかったです。<br>
　４点目は情報共有です。チームの指針として午前と夕方2回のデイリースクラムを実施し、情報の共有を行っていましたが、実装していることや発生しているエラーについての共有を行い、知っている知識があれば、メンバーをフォローするようにし、進捗を早く進めることが出来ました。<br>

②個人として工夫を行った点<br>
　新しい機能をマージして本番環境へデプロイを行うたびに、追加した機能だけではなく実装済みの機能も問題なく動くかテストを行いました。これによりデプロイ後に起きたエラーの原因を特定しやすくなりました。<br>
　また、チームメンバーに協力してもらいデプロイ実行後、正常に機能をしているかを確認してもらうことで後々エラーが出てどこから間違っているかが分からないといったことがないように情報を共有し、ミスが起こりにくい仕組みを作りました。<br>
 
 苦労した点<br>
①デプロイ・本番環境でのエラー解決<br>
　AWSを用いてのデプロイは1度しか経験がなく、しかもrails5.0系でのカリキュラムであったため、master.key設定など初めて取り組むことも多かったです。しかし、設定をしていく中で行き詰まることもありましたが、その度に解決方法を調べ、学ぶことでデプロイの理解度を深めることができました。また、苦手だったLinuxコマンドに対して興味を持てるようになり、今後参考書や教材を活用して勉強していきます。<br>

②Githubの扱い<br>
　サーバーサイドは様々な機能を並行して実装するという開発スタイルをとっていたため、コンフリクトの発生率が高い期間がありました。しかしチームメンバーと情報を共有しながら開発を進めると、あらかじめコンフリクトが起こる場所がわかるようになり、コンフリクトが起こる回数を減らすことができました。<br>
　また、新しい機能がマージされたらブランチにリモートの最新データを反映させるようにし、ローカル環境で不具合に対処するように改善しました。<br>
　Githubは今後も必ず使用していく事になると思いますが、コンフリクトを完全に回避するのは難しいので、コンフリクトを回避する力だけでなく、起こったコンフリクトを解除出来る知識と技術を身につけていきます。

# DEMO
![demo](https://raw.github.com/wiki/itokeso/freemarket_app_71b/images/image.gif)


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
