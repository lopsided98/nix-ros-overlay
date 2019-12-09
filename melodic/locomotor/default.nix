
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, geometry-msgs, locomotor-msgs, nav-core2, pluginlib, actionlib, catkin, roscpp, roslint, nav-2d-msgs, rospy, nav-msgs, nav-2d-utils }:
buildRosPackage {
  pname = "ros-melodic-locomotor";
  version = "0.2.5-r1";

  src = fetchurl {
    url = "https://github.com/DLu/robot_navigation-release/archive/release/melodic/locomotor/0.2.5-1.tar.gz";
    name = "0.2.5-1.tar.gz";
    sha256 = "d963fa2820b1c75aaf1f74fa7756f26d27cc254b1f01ab40a5c078c2bae8a224";
  };

  buildType = "catkin";
  buildInputs = [ geometry-msgs locomotor-msgs nav-core2 pluginlib actionlib roscpp nav-2d-msgs rospy nav-msgs nav-2d-utils ];
  checkInputs = [ roslint ];
  propagatedBuildInputs = [ geometry-msgs locomotor-msgs nav-2d-msgs nav-core2 pluginlib actionlib roscpp rospy nav-msgs nav-2d-utils ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Locomotor is an extensible path planning coordination engine that replaces move_base. The goal is to provide a mechanism for controlling what happens when the global and local planners succeed and fail. It leverages ROS callback queues to coordinate multiple threads.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
