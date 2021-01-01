
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, catkin, geometry-msgs, locomotor-msgs, nav-2d-msgs, nav-2d-utils, nav-core2, nav-msgs, pluginlib, roscpp, roslint, rospy }:
buildRosPackage {
  pname = "ros-kinetic-locomotor";
  version = "0.3.0-r1";

  src = fetchurl {
    url = "https://github.com/locusrobotics/robot_navigation-release/archive/release/kinetic/locomotor/0.3.0-1.tar.gz";
    name = "0.3.0-1.tar.gz";
    sha256 = "c711e7989a3408c11e25bb910f417e3d9fdcd511f96ecf350bd8270bd3b35842";
  };

  buildType = "catkin";
  checkInputs = [ roslint ];
  propagatedBuildInputs = [ actionlib geometry-msgs locomotor-msgs nav-2d-msgs nav-2d-utils nav-core2 nav-msgs pluginlib roscpp rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Locomotor is an extensible path planning coordination engine that replaces move_base. The goal is to provide a mechanism for controlling what happens when the global and local planners succeed and fail. It leverages ROS callback queues to coordinate multiple threads.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
