
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, pluginlib, roslint, nav-core2, catkin, nav-2d-utils, nav-msgs, actionlib, rospy, locomotor-msgs, roscpp, nav-2d-msgs, geometry-msgs }:
buildRosPackage {
  pname = "ros-melodic-locomotor";
  version = "0.2.5-r1";

  src = fetchurl {
    url = https://github.com/DLu/robot_navigation-release/archive/release/melodic/locomotor/0.2.5-1.tar.gz;
    sha256 = "d963fa2820b1c75aaf1f74fa7756f26d27cc254b1f01ab40a5c078c2bae8a224";
  };

  buildInputs = [ pluginlib nav-core2 nav-2d-utils nav-msgs actionlib rospy locomotor-msgs roscpp nav-2d-msgs geometry-msgs ];
  checkInputs = [ roslint ];
  propagatedBuildInputs = [ pluginlib nav-core2 nav-2d-utils nav-msgs actionlib rospy locomotor-msgs roscpp nav-2d-msgs geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Locomotor is an extensible path planning coordination engine that replaces move_base. The goal is to provide a mechanism for controlling what happens when the global and local planners succeed and fail. It leverages ROS callback queues to coordinate multiple threads.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
