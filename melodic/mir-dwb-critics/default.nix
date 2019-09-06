
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, dwb-local-planner, pluginlib, nav-core2, costmap-queue, sensor-msgs, catkin, nav-2d-msgs, dwb-critics, nav-2d-utils, angles, roscpp, nav-grid-iterators, geometry-msgs }:
buildRosPackage {
  pname = "ros-melodic-mir-dwb-critics";
  version = "1.0.4-r1";

  src = fetchurl {
    url = "https://github.com/uos-gbp/mir_robot-release/archive/release/melodic/mir_dwb_critics/1.0.4-1.tar.gz";
    name = "1.0.4-1.tar.gz";
    sha256 = "72ef1187b0c85ee0de3f41cf602bb84854fbfdfb65422ea25b44d9e70b6b76f4";
  };

  buildType = "catkin";
  buildInputs = [ dwb-local-planner pluginlib nav-core2 costmap-queue sensor-msgs dwb-critics nav-2d-msgs nav-2d-utils angles roscpp nav-grid-iterators geometry-msgs ];
  propagatedBuildInputs = [ dwb-local-planner pluginlib sensor-msgs nav-core2 costmap-queue dwb-critics nav-2d-msgs nav-2d-utils angles roscpp nav-grid-iterators geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Trajectory critics for the dwb_local_planner that work well together with the SBPL global planner on the MiR robot'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
