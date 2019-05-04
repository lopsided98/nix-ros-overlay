
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, dwb-local-planner, pluginlib, nav-core2, costmap-queue, sensor-msgs, catkin, nav-2d-msgs, dwb-critics, nav-2d-utils, angles, roscpp, nav-grid-iterators, geometry-msgs }:
buildRosPackage {
  pname = "ros-kinetic-mir-dwb-critics";
  version = "1.0.3";

  src = fetchurl {
    url = https://github.com/uos-gbp/mir_robot-release/archive/release/kinetic/mir_dwb_critics/1.0.3-0.tar.gz;
    sha256 = "f96a994d81151523897228f79cbe9631bcd13d037cccb00e67d63c27b6bf7a24";
  };

  buildInputs = [ dwb-local-planner pluginlib nav-core2 costmap-queue sensor-msgs dwb-critics nav-2d-msgs nav-2d-utils angles roscpp nav-grid-iterators geometry-msgs ];
  propagatedBuildInputs = [ dwb-local-planner pluginlib nav-core2 costmap-queue sensor-msgs dwb-critics nav-2d-msgs nav-2d-utils angles roscpp nav-grid-iterators geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Trajectory critics for the dwb_local_planner that work well together with the SBPL global planner on the MiR robot'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
