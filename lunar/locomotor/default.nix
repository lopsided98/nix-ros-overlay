
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, pluginlib, roslint, nav-core2, catkin, nav-2d-utils, nav-msgs, actionlib, rospy, locomotor-msgs, roscpp, nav-2d-msgs, geometry-msgs }:
buildRosPackage {
  pname = "ros-lunar-locomotor";
  version = "0.2.5";

  src = fetchurl {
    url = https://github.com/locusrobotics/robot_navigation-release/archive/release/lunar/locomotor/0.2.5-0.tar.gz;
    sha256 = "77df9eef6d1dcc40f937235c6adadf53bae5db3bb6e61a35979a46ae8d354268";
  };

  buildInputs = [ pluginlib nav-core2 nav-2d-utils nav-msgs actionlib rospy locomotor-msgs roscpp nav-2d-msgs geometry-msgs ];
  checkInputs = [ roslint ];
  propagatedBuildInputs = [ pluginlib nav-core2 nav-2d-utils nav-msgs actionlib rospy locomotor-msgs roscpp nav-2d-msgs geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Locomotor is an extensible path planning coordination engine that replaces move_base. The goal is to provide a mechanism for controlling what happens when the global and local planners succeed and fail. It leverages ROS callback queues to coordinate multiple threads.'';
    #license = lib.licenses.BSD;
  };
}
