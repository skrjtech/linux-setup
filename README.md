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
link先に飛んで, Toolkit Archiveの一覧から欲しいVersionのCudaを選択
https://developer.nvidia.com/cuda-toolkit-archive \
Operating System: Linux \
Architecture: x86_64 \
Distribution: ubuntu \
Version: 18.04 | 20.04 | 22.04 | etc... \
Installer Type: dev [local] \
下記の結果が出る (注意↓: Cuda Toolkit 11.8　Ubuntu 20.04)
```
wget https://developer.download.nvidia.com/compute/cuda/repos/ubuntu2004/x86_64/cuda-ubuntu2004.pin
sudo mv cuda-ubuntu2004.pin /etc/apt/preferences.d/cuda-repository-pin-600
wget https://developer.download.nvidia.com/compute/cuda/11.8.0/local_installers/cuda-repo-ubuntu2004-11-8-local_11.8.0-520.61.05-1_amd64.deb
sudo dpkg -i cuda-repo-ubuntu2004-11-8-local_11.8.0-520.61.05-1_amd64.deb
sudo cp /var/cuda-repo-ubuntu2004-11-8-local/cuda-*-keyring.gpg /usr/share/keyrings/
sudo apt-get update
sudo apt-get -y install cuda
```
適当な名前のスクリプトファイルに保存して実行
# 日本配列・英語配列キーボード設定
## 日本語配列
Mozcをインストールして
```
sudo apt install -y ibus-mozc
sudo reboot
```
Setting -> Region & Language -> Manage Installed Language インストールを行う \
インストールの完了後に言語選択からMozcを追加 \
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
# Deb Install Patter
## Pattern: apt  
```
sudo apt install xxx.deb
```
## Pattern: gdebi
```
sudo gdebi xxx.deb
```
## Pattern: dpkg
```
sudo dpkg -i xxx.deb
```
依存性の解決法
```
sudo apt install -f
```
# vscode Install
link先から使用しているArchitectureのファイルをdownload
https://code.visualstudio.com/download \
Deb Installからインストール方法を確認してインストール
# Google Chrome Download
Architectureを確認してブラウザをインストール \
[arch=amd64] amd64を使用しているものに変更
```
sudo apt update && sudo apt -y upgrade
sudo apt install -y apt-transport-https ca-certificates wget software-properties-common
wget -q -O - https://dl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
sudo sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google-chrome.list'
sudo apt update
sudo apt install -y google-chrome-stable
```
# Anaconda3 Install
link先から最新のファイルをdownload
https://www.anaconda.com/products/distribution
特定の場所にインストール
```
bash anaconda3.sh -bfu -p /tmp/anaconda3
rm -f anaconda3.sh
```