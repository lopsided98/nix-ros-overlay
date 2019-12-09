
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, geometry-msgs, nav-2d-msgs, nav-core2, pluginlib, catkin, costmap-queue, roscpp, roslint, dwb-local-planner, nav-grid-iterators, angles, nav-2d-utils }:
buildRosPackage {
  pname = "ros-kinetic-dwb-critics";
  version = "0.2.5";

  src = fetchurl {
    url = "https://github.com/locusrobotics/robot_navigation-release/archive/release/kinetic/dwb_critics/0.2.5-0.tar.gz";
    name = "0.2.5-0.tar.gz";
    sha256 = "9aa1745b72bd9344f8c38fea4b051529682ec139452303432ce374a7fd120593";
  };

  buildType = "catkin";
  buildInputs = [ sensor-msgs geometry-msgs nav-2d-msgs nav-core2 pluginlib costmap-queue roscpp dwb-local-planner nav-grid-iterators angles nav-2d-utils ];
  checkInputs = [ roslint ];
  propagatedBuildInputs = [ sensor-msgs nav-grid-iterators geometry-msgs nav-2d-msgs nav-core2 pluginlib costmap-queue dwb-local-planner roscpp angles nav-2d-utils ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Implementations for dwb_local_planner TrajectoryCritic interface'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
