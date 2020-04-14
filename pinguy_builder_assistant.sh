#!/bin/bash
echo ========================
echo pinguy builder assistant
echo ========================
echo 設定ファイルのコピーを開始します。root権限を使用します。
sudo cp -r $HOME/.local/share/applications/ /etc/skel/.local/
sudo cp -r $HOME/.config/autostart/ /etc/skel/.config/
sudo cp -r $HOME/.config/dconf/ /etc/skel/.config/
sudo cp -r $HOME/.config/gtk-2.0/ /etc/skel/.config/
sudo cp -r $HOME/.config/gtk-3.0/ /etc/skel/.config/
sudo cp -r $HOME/.config/Thunar/ /etc/skel/.config/
sudo cp -r $HOME/.config/xfce4/ /etc/skel/.config/
echo システムをアップデートします
sudo apt-get update && apt-get upgrade -y
echo 不要な依存関係を削除します
sudo apt autoremove
echo 準備は完了しました。PinguyBuilderを使用してisoをビルドしてください。
sudo PinguyBuilder-gtk