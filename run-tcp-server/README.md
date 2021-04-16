# run-tcp-server
h2をTCPサーバーとして動かすため最低限必要なもののメモ

φ(..)メモメモ


## 動かす
[org.h2.tools.Server](https://www.h2database.com/javadoc/org/h2/tools/Server.html) を実行する。

`main` メソッドの引数で使いそうなもの

|オプション         |内容                     |
|------------------|-------------------------|
|-web              | webコンソールを使う       |
|-webAllowOthers   | webコンソールを他からつなげるようにする時に使う       |
|-webPort <番号>   | webコンソールのポート番号(default 8082)  |
|-tcp             | TCPサーバーで起動する       |
|-tcpAllowOther   | 他からの接続許可           |
|-tcpPort <番号>  | TCPのポート番号(default 9092)  |
|-baseDir <ディレクトリ> | ベースディレクトリ          |
|-ifExists        | DBがあるときだけ繋げる             |
|-ifNotExists     | DBが無ければ作る                  |
|-browser         | webコンソールをブラウザで開く      |


## 接続
URLは[これ](https://www.h2database.com/html/features.html#database_url)

とりあえずは `jdbc:h2:tcp://localhost/test` こんな感じかな

