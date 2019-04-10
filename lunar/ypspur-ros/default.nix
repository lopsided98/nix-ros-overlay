
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, roslint, trajectory-msgs, sensor-msgs, catkin, ypspur, roscpp, rostest, nav-msgs, rospy, std-msgs, tf, geometry-msgs }:
buildRosPackage {
  pname = "ros-lunar-ypspur-ros";
  version = "0.2.0";

  src = fetchurl {
    url = https://github.com/openspur/ypspur_ros-release/archive/release/lunar/ypspur_ros/0.2.0-0.tar.gz;
    sha256 = "373566f3c5ca10016d40798b42412c9aa6d6c4c064a0cf23a164a25001d42ff7";
  };

  buildInputs = [ roslint trajectory-msgs sensor-msgs ypspur roscpp rostest nav-msgs rospy std-msgs tf geometry-msgs ];
  propagatedBuildInputs = [ trajectory-msgs sensor-msgs ypspur roscpp nav-msgs rospy std-msgs tf geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS wrapper for the mobile robot control platform YP-Spur'';
    #license = lib.licenses.BSD;
  };
}
