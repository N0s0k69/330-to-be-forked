read -p "imy? " USERNAME
mkdir ~/$USERNAME
git init ~/$USERNAME/dev
cd ~/$USERNAME/dev

mkdir -p ~/$USERNAME/dev/photos/{2020,2021,2022,2023,2024}
touch ~/$USERNAME/dev/photos/2020/default.png
touch ~/$USERNAME/dev/photos/2021/default.png
touch ~/$USERNAME/dev/photos/2022/default.png
touch ~/$USERNAME/dev/photos/2023/default.png
touch ~/$USERNAME/dev/photos/2024/default.png
cd ~/$USERNAME/dev/photos
git add .
git commit -m "1 "

mkdir -p ~/$USERNAME/dev/videos/{2020,2021,2022,2023,2024}
touch ~/$USERNAME/dev/videos/2020/default.mp4
touch ~/$USERNAME/dev/videos/2021/default.mp4
touch ~/$USERNAME/dev/videos/2022/default.mp4
touch ~/$USERNAME/dev/videos/2023/default.mp4
touch ~/$USERNAME/dev/videos/2024/default.mp4
cd ~/$USERNAME/dev/videos
git add .
git commit -m "2 "

mkdir -p ~/$USERNAME/dev/documents/{2020,2021,2022,2023,2024}
touch ~/$USERNAME/dev/documents/2020/default.mp4
touch ~/$USERNAME/dev/documents/2021/default.mp4
touch ~/$USERNAME/dev/documents/2022/default.mp4
touch ~/$USERNAME/dev/documents/2023/default.mp4
touch ~/$USERNAME/dev/documents/2024/default.mp4
cd ~/$USERNAME/dev/documents
git add .
git commit -m "3 "