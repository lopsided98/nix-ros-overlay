
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, pluginlib, roslint, nav-core2, catkin, nav-2d-utils, nav-msgs, actionlib, rospy, locomotor-msgs, roscpp, nav-2d-msgs, geometry-msgs }:
buildRosPackage {
  pname = "ros-kinetic-locomotor";
  version = "0.2.5";

  src = fetchurl {
    url = "https://github.com/locusrobotics/robot_navigation-release/archive/release/kinetic/locomotor/0.2.5-0.tar.gz";
    name = "0.2.5-0.tar.gz";
    sha256 = "19b6f2635913dfeeb3117561d98839c16f35661ef850c80e07477e1d8a5165c5";
  };

  buildType = "catkin";
  buildInputs = [ pluginlib nav-core2 nav-2d-utils nav-msgs actionlib rospy locomotor-msgs roscpp nav-2d-msgs geometry-msgs ];
  checkInputs = [ roslint ];
  propagatedBuildInputs = [ pluginlib nav-core2 nav-2d-utils nav-msgs actionlib rospy locomotor-msgs roscpp nav-2d-msgs geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Locomotor is an extensible path planning coordination engine that replaces move_base. The goal is to provide a mechanism for controlling what happens when the global and local planners succeed and fail. It leverages ROS callback queues to coordinate multiple threads.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
