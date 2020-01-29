#!/bin/bash
pushd /home/xiang/mnt
fusermount -u Data
fusermount -u Dev
fusermount -u data2
fusermount -u Proj
fusermount -u Tmp
fusermount -u Workspace
popd
