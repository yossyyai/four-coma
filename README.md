# アプリケーション名
four-coma

# アプリケーション概要


# url
https://four-coma.herokuapp.com/

# テスト用アカウント


# 利用方法
写真を投稿して、4コマ漫画を作成する

# 目指した課題解決


# 洗い出した用件


# 実装した機能についてのGIFと説明


# 実装予定の機能


# データベース設計

## users テーブル

| Column                   | Type   | Options                   |
| ------------------------ | ------ | ------------------------- |
| name                     | string | null: false, unique: true |
| email                    | string | null: false, unique: true |
| encrypted_password       | string | null: false               |

### Association

- has_many :comas
- has_many :comments

## comas テーブル

| Column                   | Type    | Options                         |
| ------------------------ | ------- | ------------------------------- |
| user_id                  | integer | null: false, foreign_key: true  |
| room_id                  | integer | null: false, foreign_key: true  |

### Association

- belongs_to :user
- belongs_to :room

## rooms テーブル

| Column                   | Type    | Options                   |
| ------------------------ | ------- | ------------------------- |
| name                     | string  | null:false                |
| coma_id_1                | integer |                           |
| coma_id_2                | integer |                           |
| coma_id_3                | integer |                           |
| coma_id_4                | integer |                           |

### Association
- has_many :comas
- has_many :comments

## comments テーブル

| Column                   | Type    | Options                   |
| ------------------------ | ------- | ------------------------- |
| text                     | string  | null:false                |
| user_id                  | integer | null:false                |
| room_id                  | integer | null:false                |

### Association
- belongs_to :user
- belongs_to :room


# ローカルでの動作方法
