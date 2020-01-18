
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, base-local-planner, catkin, costmap-2d, eigen, nav-core, pluginlib, roscpp, tf }:
buildRosPackage {
  pname = "ros-kinetic-carrot-planner";
  version = "1.14.5-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/navigation-release/archive/release/kinetic/carrot_planner/1.14.5-1.tar.gz";
    name = "1.14.5-1.tar.gz";
    sha256 = "be83e77b7f193cd2af491d7f90a2697f9d5f72101fa2b44eb2b85752607f114b";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ base-local-planner costmap-2d eigen nav-core pluginlib roscpp tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This planner attempts to find a legal place to put a carrot for the robot to follow. It does this by moving back along the vector between the robot and the goal point.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
