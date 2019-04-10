
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, pluginlib, roslint, nav-grid-iterators, nav-core2, costmap-queue, sensor-msgs, catkin, nav-2d-msgs, nav-2d-utils, angles, roscpp, dwb-local-planner, geometry-msgs }:
buildRosPackage {
  pname = "ros-lunar-dwb-critics";
  version = "0.2.5";

  src = fetchurl {
    url = https://github.com/locusrobotics/robot_navigation-release/archive/release/lunar/dwb_critics/0.2.5-0.tar.gz;
    sha256 = "df5a75caebc3e567ba660b5f587b9cab8431fe2204f818334f85aa41473d16a0";
  };

  buildInputs = [ pluginlib nav-grid-iterators sensor-msgs nav-core2 costmap-queue nav-2d-msgs nav-2d-utils angles roscpp dwb-local-planner geometry-msgs ];
  checkInputs = [ roslint ];
  propagatedBuildInputs = [ pluginlib nav-grid-iterators sensor-msgs nav-core2 costmap-queue nav-2d-msgs nav-2d-utils angles roscpp dwb-local-planner geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Implementations for dwb_local_planner TrajectoryCritic interface'';
    #license = lib.licenses.BSD;
  };
}
