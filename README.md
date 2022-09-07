# For Beginner
初期設定で迷う様々な設定を記録したパック\
主に自分自身が環境作りの際、毎回記述するコードを記録したサンプル\
* スムーズな開発には、ゴミが入った計算機が必要だ
# Linux Setup
## First Setup
OSのインストール後にシステムのアップデートとgitのインストールを行う
```
sudo apt update && sudo apt install -y git 
```
githubから初期設定などのスクリプトを落とす
```
git clone https://github.com/skrjtech/linuxsetup-beginner.git
cd linuxsetup-beginner
```
単純なセットアップ\
-s 指定でそれぞれのアップデートを行う
```
# . linuxsetup.sh [args]
. linuxsetup.sh -s 
```
エディタのインストール \
引数にエディタ名を指定することで簡単にインストールが可能 \
最新のバージョンでインストール\
以下で指定したエディタのみインストールが可能
```
. linuxsetup.sh --pycharm --vscode --atom --vim 
```
# Raspberry pi Setup

