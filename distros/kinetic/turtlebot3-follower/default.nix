
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, nav-msgs, rospy, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-kinetic-turtlebot3-follower";
  version = "1.1.0";

  src = fetchurl {
    url = "https://github.com/ROBOTIS-GIT-release/turtlebot3_applications-release/archive/release/kinetic/turtlebot3_follower/1.1.0-0.tar.gz";
    name = "1.1.0-0.tar.gz";
    sha256 = "379279db25b8d06a0fde2af49be48c2d0456c47d180ade700add1286271a6338";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ geometry-msgs nav-msgs rospy sensor-msgs std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The follower demo was implemented using a 360 Laser Distance Sensor LDS-01. The classification algorithm is used based on previous fitting with samples of person and obstacles positions to take actions. It follows someone in front of the robot within a 50 centimeter range and 140 degrees.'';
    license = with lib.licenses; [ asl20 ];
  };
}
