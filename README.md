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
link先に飛んで, Toolkit Archiveの一覧から欲しいVersionのCudaを選択 \
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
# キーボードの日本配列/英語配列の設定
OSインストール後にキーボード設定を行う為に

    Setting -> Region & Language -> Manage Installed Language

から必要な言語インストールを行う.   
Manage Installed Languageを開くと自動的にセットアップやインストールが始まる.  
完了後に扱うキー配列のパッケージをインストール [Mozc(日本語配列)/Fcitx(英語配列)]

## 日本語配列
Mozcをインストールして
```
sudo apt install -y ibus-mozc
```
再起動をして設定を反映
```
sudo reboot
```
インストールの完了後に言語選択からMozcを追加 \
ひらがな<=>ローマ字変換にはSuper+Spaceキーで切り替る \
切り替え方の変更は可能 (後で調べる)
## 英語配列 (1) fcitx-mozc
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
## 英語配列 (2) fcitx5-mozc
```
sudo apt install -y fcitx5-mozc
```
Keyboard input method system: iBus -> Fcitx に切り替え \
設定 -> Region & Language -> Manage Installed Language -> Keyboard input method system -> Fcitx \
再起動をして設定を反映
```
sudo reboot
```
# Deb Install Pattern
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
link先から使用しているArchitectureのファイルをdownload \
https://code.visualstudio.com/download \
Deb Installからインストール方法を確認してインストール \
下記のコマンドで即インストール
```
. installer/vscode.sh
```
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
別な方法で即インストール
```
. installer/googlechrome.sh
```
# Anaconda3 Install
link先から最新のファイルをdownload \
https://www.anaconda.com/products/distribution \
特定の場所にインストール
```
bash anaconda3.sh -bfu -p /tmp/anaconda3
rm -f anaconda3.sh
```
# Python3 Install
Python3のインストール方法
```
sudo apt update && sudo apt -y upgrade
sudo apt install -y python3-pip
sudo apt install -y build-essential libssl-dev libffi-dev python3-dev
```
# Python3 Install (Source)
ソースからインストールする方法
```
sudo apt install -y build-essential  \
                     tk-dev          \
                     uuid-dev        \
                     libdb-dev       \
                     libssl-dev      \
                     zlib1g-dev      \
                     libbz2-dev      \
                     libffi-dev      \
                     libgdbm-dev     \
                     liblzma-dev     \
                     libsqlite3-dev  \
                     libreadline-dev \
                     libncursesw5-dev
```
```
PYTHON_VERSION=3.10.8
```
```
curl -O https://www.python.org/ftp/python/${PYTHON_VERSION}/Python-${PYTHON_VERSION}.tar.xz 
tar xJf Python-$PYTHON_VERSION.tar.xz 
rm -rf Python-$PYTHON_VERSION.tar.xz 
cd Python-$PYTHON_VERSION 
./configure --prefix=/usr/local/python$PYTHON_VERSION --with-ensurepip 
make 
make install 
cd ../ 
rm -rf Python-$PYTHON_VERSION 
ln -s /usr/local/python${PYTHON_VERSION}/bin/python3 /usr/bin/python 
ln -s /usr/local/python${PYTHON_VERSION}/bin/pip3 /usr/bin/pip 
```
# Docker Install 
( [Dockerについての追加情報](docs/docker.md) )  

link先を参照してインストール法を確認\
https://docs.docker.com/engine/install/ \
Ubuntuの場合 \
step1. インストール済みのDockerを削除 
```
sudo apt install gnome-terminal
sudo apt remove docker-desktop
rm -r $HOME/.docker/desktop
sudo rm /usr/local/bin/com.docker.cli
sudo apt purge docker-desktop
```
step2. Dockerインストールに必要なリポジトリを更新とインストール
```
sudo apt-get update
sudo apt-get install ca-certificates    \
                     curl               \
                     gnupg              \
                     lsb-release
```
step3. GPG keyの追加
```
sudo mkdir -p /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
echo "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
```
step4. Docker install
```
sudo chmod a+r /etc/apt/keyrings/docker.gpg
sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli containerd.io docker-compose-plugin
```
step5. 権限の付与
```
sudo usermod -aG docker ${USER}
```
step6. 再起動
```
sudo reboot
```
# Docker Compose Install 
docker composeのインストール
```
sudo apt-get update
sudo apt-get install docker-compose-plugin
```
Version Check
```
docker compose version
```
# Docker NVIDIA Install 
Docker-CE on Ubuntu can be setup using Docker’s official convenience script:
```
# curl https://get.docker.com | sh 
# sudo systemctl --now enable docker
```
Setup the package repository and the GPG key:
```
distribution=$(. /etc/os-release;echo $ID$VERSION_ID) \
      && curl -fsSL https://nvidia.github.io/libnvidia-container/gpgkey | sudo gpg --dearmor -o /usr/share/keyrings/nvidia-container-toolkit-keyring.gpg \
      && curl -s -L https://nvidia.github.io/libnvidia-container/$distribution/libnvidia-container.list | \
            sed 's#deb https://#deb [signed-by=/usr/share/keyrings/nvidia-container-toolkit-keyring.gpg] https://#g' | \
            sudo tee /etc/apt/sources.list.d/nvidia-container-toolkit.list
```
Install the nvidia-docker2 package (and dependencies) after updating the package listing:
```
sudo apt-get update
sudo apt-get install -y nvidia-docker2
sudo systemctl restart docker
```
At this point, a working setup can be tested by running a base CUDA container:
```
sudo docker run --rm --gpus all nvidia/cuda:11.6.2-base-ubuntu20.04 nvidia-smi
```
# Raspberry Pi Docker And Docker Compose Install 
```
sudo apt update && sudo apt upgrade
curl -sSL https://get.docker.com | sh
sudo usermod -aG docker ${USER}

LATEST=v2.15.0
URL=https://github.com/docker/compose/releases/download/$LATEST/docker-compose-linux-aarch64
OUTPUT_PATH=/usr/local/lib/docker/cli-plugins
sudo mkdir -p $OUTPUT_PATH
OUTPUT_PATH=$OUTPUT_PATH/docker-compose
sudo curl -SL $URL -o $OUTPUT_PATH
sudo chown $USER:$USER $OUTPUT_PATH
sudo chmod 777 $OUTPUT_PATH
```
# Raspberry Pi IP 固定
```
sudo nano /etc/dhcpcd.conf
```
interface eth0
static ip_address=192.168.XXX.XXX/24
static ip6_address=XX:XX:XX:XX:XX:XX:XX:XX/64
static routers=192.168.XXX.XXX
static domain_name_servers=192.168.XXX.XXX XXX.XXX.XXX.XXX 

# Achitecture Check
```
echo $(dpkg --print-architecture)
```
out: amd64

# Release Check
```
echo $(lsb_release -cs)
```
out: focal <- 20.04の場合

# Linux 起動時に起こる現象
## GRUBの画面が起動される時の対処法
lsから対象のブートを探索
```
ls
```
output:
```
(hd*), (hd*,gpt*)
```
起動するOSをセット
```
grub: set prefix=(hd*,*)/boot/grub
grub: normal
```