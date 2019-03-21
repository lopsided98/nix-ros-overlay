
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, roslint, trajectory-msgs, sensor-msgs, catkin, ypspur, roscpp, rostest, nav-msgs, rospy, std-msgs, tf, geometry-msgs }:
buildRosPackage {
  pname = "ros-melodic-ypspur-ros";
  version = "0.2.0";

  src = fetchurl {
    url = https://github.com/openspur/ypspur_ros-release/archive/release/melodic/ypspur_ros/0.2.0-0.tar.gz;
    sha256 = "aa18debf2c372f040b3ac8ae242bac35a325e0135b2761b59d1b2a6b0797b8ca";
  };

  propagatedBuildInputs = [ trajectory-msgs sensor-msgs ypspur roscpp nav-msgs rospy std-msgs tf geometry-msgs ];
  nativeBuildInputs = [ roslint trajectory-msgs sensor-msgs catkin ypspur roscpp rostest nav-msgs rospy std-msgs tf geometry-msgs ];

  meta = {
    description = ''ROS wrapper for the mobile robot control platform YP-Spur'';
    #license = lib.licenses.BSD;
  };
}
