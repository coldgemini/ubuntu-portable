sudo apt install sox libsox-fmt-all
sudo apt  install alsa-utils pulseaudio
echo 'blacklist snd_hdmi_lpe_audio' | sudo tee /etc/modprobe.d/blacklist.conf
echo 'blacklist snd_soc_sst_bytcr_rt5640' | sudo tee /etc/modprobe.d/blacklist.conf
echo 'blacklist snd_pcm' | sudo tee /etc/modprobe.d/blacklist.conf
#cat /proc/asound/modules
#alsamixer -c 1
