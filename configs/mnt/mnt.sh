#!/bin/bash
pushd /home/xiang/mnt
sshfs -p 10822 zhouxiangyong@s108:/data2/home/zhouxiangyong/Data Data -o reconnect,ServerAliveInterval=900,ServerAliveCountMax=9,auto_cache,cache_timeout=80000
sshfs -p 10822 zhouxiangyong@s108:/data2/home/zhouxiangyong/Dev Dev -o reconnect,ServerAliveInterval=900,ServerAliveCountMax=9,auto_cache,cache_timeout=80000
sshfs -p 10822 zhouxiangyong@s108:/data2 data2 -o reconnect,ServerAliveInterval=900,ServerAliveCountMax=9,auto_cache,cache_timeout=80000
sshfs -p 10822 zhouxiangyong@s108:/data2/home/zhouxiangyong/Proj Proj -o reconnect,ServerAliveInterval=900,ServerAliveCountMax=9,auto_cache,cache_timeout=80000
sshfs -p 10822 zhouxiangyong@s108:/data2/home/zhouxiangyong/Tmp Tmp -o reconnect,ServerAliveInterval=900,ServerAliveCountMax=9,auto_cache,cache_timeout=80000
sshfs -p 10822 zhouxiangyong@s108:/data2/home/zhouxiangyong/Workspace Workspace -o reconnect,ServerAliveInterval=900,ServerAliveCountMax=9,auto_cache,cache_timeout=80000
popd
