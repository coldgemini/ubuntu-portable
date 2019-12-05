import cv2;
import os;

import argparse
parser = argparse.ArgumentParser()
parser.add_argument("-p", "--path", type=str,
                    help="root path")
args = parser.parse_args()
root = args.path
# print(root)

# root='/home/xiang/Data/US1127/study_jpg'
for path, subdirs, files in os.walk(root):
    for name in files:
        imgpath = os.path.join(path, name)
        img = cv2.imread(imgpath)
