# RoboSys2018-Kadai2
+ これは千葉工業大学 先進工学部 未来ロボティクス学科の学部3年の授業ロボットシステム学の課題です
## 実施内容
+ Dockerコンテナ内にrosの環境を作成した
+ rosを使ってgazebo上のDarwinOPを歩行させた
## 実施結果
+ [Youtube](https://youtu.be/zEZjfbqxBQo)
## 実行方法
```Bash
git clone https://github.com/NaokiTakahashi12/RoboSys2018-Kadai2.git
cd RoboSys2018-Kadai2
docker-compose up
```
+ ウェブブラウザで```localhost:16080```にアクセス
```Bash
cd ~/catkin_ws/src
catkin_init_workspace
cd ..
catkin_make
roslaunch darwin_gazebo darwin_gazebo.launch
rosrun robosys_my_package circle_walk.py
```
## Dockerがインストールされていない方
+ [インストール方法](https://docs.docker.com/install/linux/docker-ce/ubuntu/)
