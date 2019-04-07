
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, catkin, nav-msgs, rospy, std-msgs, geometry-msgs }:
buildRosPackage {
  pname = "ros-melodic-turtlebot3-follower";
  version = "1.1.0";

  src = fetchurl {
    url = https://github.com/ROBOTIS-GIT-release/turtlebot3_applications-release/archive/release/melodic/turtlebot3_follower/1.1.0-0.tar.gz;
    sha256 = "f2059a2728165ba5974739c04cabd2e782f3c06bff35299c149836c98bc6a429";
  };

  buildInputs = [ nav-msgs rospy std-msgs sensor-msgs geometry-msgs ];
  propagatedBuildInputs = [ nav-msgs rospy std-msgs sensor-msgs geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The follower demo was implemented using a 360 Laser Distance Sensor LDS-01. The classification algorithm is used based on previous fitting with samples of person and obstacles positions to take actions. It follows someone in front of the robot within a 50 centimeter range and 140 degrees.'';
    #license = lib.licenses.Apache 2.0;
  };
}
