#Command line instructions

#Git global setup
git config --global user.name "Xiangyong Zhou"
git config --global user.email "gemini@deepsight.ai"

#Create a new repository
git clone git@git.deepsight.ai:DeepLearningGroup/test2.git
cd test2
touch README.md
git add README.md
git commit -m "add README"
git push -u origin master

#Existing folder
cd existing_folder
git init
git remote add origin git@git.deepsight.ai:DeepLearningGroup/test2.git
git add .
git commit -m "Initial commit"
git push -u origin master

#Existing Git repository
cd existing_repo
git remote add origin git@git.deepsight.ai:DeepLearningGroup/test2.git
git push -u origin --all
git push -u origin --tags
