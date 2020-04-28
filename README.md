# README

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