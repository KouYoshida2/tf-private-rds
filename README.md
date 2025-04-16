# tf-private-rds

private subnet 内に RDS を構築する terraform

# やること

- terraform セットアップ
- terraform で private RDS 構成を組む
- AWS にデプロイ
- table plus などからアクセスしてみる

- typeORM 使って SQL の頻出要件やってみる

以下の構成を Terraform で記述します。以下の内容を infra/main.tf に追加します。

VPC の作成
Public Subnet と Private Subnet の作成
RDS（マルチ AZ 構成）の作成
EC2 踏み台サーバーの作成
セキュリティグループの設定
