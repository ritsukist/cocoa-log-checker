# cocoa-log-checker

## 機能

 * cocoaのログから感染者との接触ログを表示する

## 動作条件

 * Andoroid版のcocoaのログのみ解析可能

## 使い方

スマホのcocoaログ（zipファイル）を解凍する
zipファイルを解凍するとcsvファイルが１４個（２週間分）あるので、同じディレクトリで実行する

## 表示例
```
$ ./cocoa_check.sh
RAW DATETIME       2022/03/29 03:46:01 - 4 days- 00:00:00,00:05:00,00:05:00
CANONICAL DATETIME 2022/03/24 18:46:01 - 00:00:00,00:05:00,00:05:00
RAW DATETIME       2022/03/31 03:21:08 - 5 days- 00:00:00,00:00:00,00:05:00
CANONICAL DATETIME 2022/03/25 18:21:08 - 00:00:00,00:00:00,00:05:00
```
RAW DATETIME ： ログ内の接触日時（UTC)
CANONICAL DATETIME　： 修正された接触日時（日本時刻）

00:00:00,　00:05:00,　00:05:00　
は左から
「平均で、45cm未満の距離での接触経過時間」
「平均で、45cmから250cm未満の距離での接触経過時間」
「250cm以上の距離での接触経過時間」
を示している

参考URL:
https://datastudio.google.com/u/0/reporting/069598a2-3f01-4b51-b023-cdb478992182/page/2pXIC
