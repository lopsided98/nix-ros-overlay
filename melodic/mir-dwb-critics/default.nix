
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, pluginlib, nav-grid-iterators, nav-core2, costmap-queue, sensor-msgs, catkin, nav-2d-msgs, dwb-critics, nav-2d-utils, angles, roscpp, dwb-local-planner, geometry-msgs }:
buildRosPackage {
  pname = "ros-melodic-mir-dwb-critics";
  version = "1.0.3";

  src = fetchurl {
    url = https://github.com/uos-gbp/mir_robot-release/archive/release/melodic/mir_dwb_critics/1.0.3-0.tar.gz;
    sha256 = "84b2d085130cc39d01978ba1b64100377bfd24b6b3a64a70f2f68c1bf8fb8866";
  };

  buildInputs = [ pluginlib nav-grid-iterators nav-core2 costmap-queue sensor-msgs nav-2d-msgs dwb-critics nav-2d-utils angles roscpp dwb-local-planner geometry-msgs ];
  propagatedBuildInputs = [ pluginlib nav-grid-iterators nav-core2 costmap-queue sensor-msgs nav-2d-msgs dwb-critics nav-2d-utils angles roscpp dwb-local-planner geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Trajectory critics for the dwb_local_planner that work well together with the SBPL global planner on the MiR robot'';
    #license = lib.licenses.BSD;
  };
}
