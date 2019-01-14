FROM dorowu/ubuntu-desktop-lxde-vnc

USER root
WORKDIR /root

RUN apt update && \
	apt upgrade -y && \
	apt install -y \
		git vim sudo curl wget gpg-agent

RUN export HOME=/root && \
	git clone https://github.com/ryuichiueda/ros_setup_scripts_Ubuntu18.04_desktop.git && \
	cd ros_setup_scripts_Ubuntu18.04_desktop && \
	./step0.bash && \
	./step1.bash && \
	apt install -y \
		ros-melodic-ros-control && \
	rm -rf /var/lib/apt/lists/*

RUN export HOME=/root && \
	mkdir -p catkin_ws/src/ && \
	cd catkin_ws/src/ && \
	git clone https://github.com/HumaRobotics/darwin_description.git && \
	git clone https://github.com/HumaRobotics/darwin_control.git && \
	git clone https://github.com/HumaRobotics/darwin_gazebo.git && \
	cd .. && \
	echo "source ~/catkin_ws/devel/setup.bash" >> ~/.bashrc
