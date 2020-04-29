# README

## Overview
5chのような掲示板の機能を持ったアプリケーションです。 
##### ※UserモデルとCategoryモデル(スレッドカテゴリ)の初期データは、seeds.rbに作成しておりますので、お手数ですが、seedファイル実行後に挙動確認をお願いいたします。


## 実装した機能 
- ユーザー登録、ログイン機能 
- スレッドの一覧表示と、スレッド毎のメッセージ閲覧機能 
- スレッドの作成とスレッド毎のメッセージ作成機能 
- スレッドのカテゴリ設定機能(スレッド作成時に関連するカテゴリを複数選択できます) 
- スレッド検索機能 (スレッドタイトルと投稿メッセージを対象に単語での曖昧検索を実装) 


## 開発環境 
- Ruby on Rails 
- RSpec (Userモデルの単体テスト実装) 
- View file：haml, scss 
- Database：MySQL 
- Editor：VS Code 


***
# *establish database*

## Users Table
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|email|string|null: false|
|password|integer|null: false|
### Association
- has_many :messages


## Messages Table
|Column|Type|Options|
|------|----|-------|
|text|text|null: false|
|user_id|references|null: false, foreign_key: true|
|topic_id|references|null: false, foreign_key: true|
### Association
- belongs_to :user
- belongs_to :topic


## Topics Table
|Column|Type|Options|
|------|----|-------|
|title|string|null: false|
### Association
- has_many :messages
- has_many :categories through: :topic_categories
- has_many :topic_categories


## Categories Table
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
### Association
- has_many :topics through: :topic_categories
- has_many :topic_categories


## Topic_categories Table
|Column|Type|Options|
|------|----|-------|
|topic_id|references|null: false, foreign_key: true|
|category_id|references|null: false, foreign_key: true|
### Association
- belongs_to :topic
- belongs_to :category