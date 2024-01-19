
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, angles, catkin, costmap-queue, dwb-local-planner, geometry-msgs, nav-2d-msgs, nav-2d-utils, nav-core2, nav-grid-iterators, pluginlib, roscpp, roslint, sensor-msgs }:
buildRosPackage {
  pname = "ros-noetic-dwb-critics";
  version = "0.3.0-r2";

  src = fetchurl {
    url = "https://github.com/DLu/robot_navigation-release/archive/release/noetic/dwb_critics/0.3.0-2.tar.gz";
    name = "0.3.0-2.tar.gz";
    sha256 = "72ca4fda86d9aa62fa0a422324a9e0cc065c7c2e587bf733d6d4b4e1beaa1667";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ roslint ];
  propagatedBuildInputs = [ angles costmap-queue dwb-local-planner geometry-msgs nav-2d-msgs nav-2d-utils nav-core2 nav-grid-iterators pluginlib roscpp sensor-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Implementations for dwb_local_planner TrajectoryCritic interface'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
