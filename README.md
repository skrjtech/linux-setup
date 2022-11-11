# 初心者向け (主に自分用)
初期設定で迷う様々な設定を記録したパック \
主に自分自身が環境作りの際、毎回記述するコード記録する
* スムーズな開発には、ゴミが入った計算機は不要だ
# Linux Setup
OSのインストール後にシステムのアップデート \
gitをインストールしてlinux-setup.gitをclone
```
sudo apt update &&         \
sudo apt -y upgrade &&     \
sudo apt-get update &&     \
sudo apt-get -y upgrade && \
sudo apt install -y git && \
git clone https://github.com/skrjtech/linux-setup.git
```
linux-setup.gitに移動して初期設定のスクリプトを行う
```
cd linux-setup
. setup/setup.sh
```
# NVIDIA CUDA Toolkit Archive
Cuda Install \
下記のlinkに飛んで, Toolkit Archiveの一覧から欲しいVersionのCudaを選択
```
https://developer.nvidia.com/cuda-toolkit-archive
```
Operating System: Linux \
Architecture: x86_64 \
Distribution: ubuntu \
Version: 18.04 | 20.04 | 22.04 | etc... \
Installer Type: dev [local] \
# 日本配列・英語配列キーボード設定
## 日本語配列
Mozcをインストールして
```
sudo apt install -y ibus-mozc
sudo reboot
```
設定からRegion & Languageの言語選択でMozcを追加 \
ひらがな<=>ローマ字変換にはSuper+Spaceキーで切り替る \
切り替え方の変更は可能 (後で調べる)
## 英語配列
fcitx-mozcをインストール
```
sudo apt install -y fcitx-mozc
```
Keyboard input method system: iBus -> Fcitx に切り替え \
設定 -> Region & Language -> Manage Installed Language -> Keyboard input method system -> Fcitx \
再起動をして設定を反映
```
sudo reboot
```