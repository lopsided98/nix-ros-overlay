
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, catkin, geometry-msgs, locomotor-msgs, nav-2d-msgs, nav-2d-utils, nav-core2, nav-msgs, pluginlib, roscpp, roslint, rospy }:
buildRosPackage {
  pname = "ros-noetic-locomotor";
  version = "0.3.0-r2";

  src = fetchurl {
    url = "https://github.com/DLu/robot_navigation-release/archive/release/noetic/locomotor/0.3.0-2.tar.gz";
    name = "0.3.0-2.tar.gz";
    sha256 = "cfc7f120c4321938de66608941cb312ef1ecfe925dcc2f698985751feabd8617";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ roslint ];
  propagatedBuildInputs = [ actionlib geometry-msgs locomotor-msgs nav-2d-msgs nav-2d-utils nav-core2 nav-msgs pluginlib roscpp rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Locomotor is an extensible path planning coordination engine that replaces move_base. The goal is to provide a mechanism for controlling what happens when the global and local planners succeed and fail. It leverages ROS callback queues to coordinate multiple threads.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
