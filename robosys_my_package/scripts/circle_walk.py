#!/usr/bin/python

import rospy
import math
from darwin_gazebo.darwin import Darwin

rospy.init_node("circle_walk")
darwin = Darwin()

rospy.sleep(3)

darwin.set_angles({"j_high_arm_l":1.3})
darwin.set_angles({"j_high_arm_r":1.3})
darwin.set_angles({"j_low_arm_l":-1.3})
darwin.set_angles({"j_low_arm_r":1.3})


darwin.set_walk_velocity(0.3, 0, 0)
rospy.sleep(10)

circle_velocity_step = 0

while(1):
		darwin.set_walk_velocity(math.sin(circle_velocity_step), math.cos(circle_velocity_step), 0)
		circle_velocity_step = circle_velocity_step + 3.14 / 180
		rospy.sleep(0.1)

darwin.set_walk_velocity(0, 0, 0)

