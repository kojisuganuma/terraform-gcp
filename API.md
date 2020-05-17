# API

API の管理。依存関係や課金周りの設定が面倒なので、コンソールでの手動管理とする。  
API の有効化・無効化を更新した際は下記リストを更新する。

## Enabled API

現在有効になっている API リスト。

```sh
$ gcloud services list --enabled
NAME                              TITLE
clouddebugger.googleapis.com      Cloud Debugger API
cloudtrace.googleapis.com         Cloud Trace API
compute.googleapis.com            Compute Engine API
logging.googleapis.com            Cloud Logging API
monitoring.googleapis.com         Cloud Monitoring API
oslogin.googleapis.com            Cloud OS Login API
servicemanagement.googleapis.com  Service Management API
serviceusage.googleapis.com       Service Usage API
storage-api.googleapis.com        Google Cloud Storage JSON API
storage-component.googleapis.com  Cloud Storage
```

## Log

- :ballot_box_with_check: `bigquery.googleapis.com`
- :ballot_box_with_check: `bigquerystorage.googleapis.com`
- :ballot_box_with_check: `datastore.googleapis.com`
- :ballot_box_with_check: `sql-component.googleapis.com`
- :white_check_mark: `compute.googleapis.com`
