
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, geometry-msgs, nav-2d-msgs, nav-core2, pluginlib, catkin, costmap-queue, roscpp, dwb-local-planner, nav-grid-iterators, angles, dwb-critics, nav-2d-utils }:
buildRosPackage {
  pname = "ros-kinetic-mir-dwb-critics";
  version = "1.0.4-r1";

  src = fetchurl {
    url = "https://github.com/uos-gbp/mir_robot-release/archive/release/kinetic/mir_dwb_critics/1.0.4-1.tar.gz";
    name = "1.0.4-1.tar.gz";
    sha256 = "eb840e0508e14fe48b12292492d2b03907498f66fd4c52b32b7ce89870552cb5";
  };

  buildType = "catkin";
  buildInputs = [ sensor-msgs geometry-msgs nav-2d-msgs nav-core2 pluginlib costmap-queue roscpp dwb-local-planner nav-grid-iterators angles dwb-critics nav-2d-utils ];
  propagatedBuildInputs = [ sensor-msgs nav-grid-iterators geometry-msgs nav-core2 pluginlib costmap-queue roscpp dwb-local-planner nav-2d-msgs angles dwb-critics nav-2d-utils ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Trajectory critics for the dwb_local_planner that work well together with the SBPL global planner on the MiR robot'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
