
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, costmap-2d, actionlib-msgs, tf, catkin, move-base-msgs, nav-msgs, visualization-msgs, actionlib, std-msgs, roslaunch, roscpp, geometry-msgs, map-msgs }:
buildRosPackage {
  pname = "ros-kinetic-explore-lite";
  version = "2.1.1";

  src = fetchurl {
    url = https://github.com/hrnr/m-explore-release/archive/release/kinetic/explore_lite/2.1.1-0.tar.gz;
    sha256 = "5c662edd509409670e5b618a63a27417ab40defffdd824949fa1680df0442652";
  };

  buildInputs = [ costmap-2d actionlib-msgs tf roscpp move-base-msgs nav-msgs actionlib std-msgs visualization-msgs geometry-msgs map-msgs ];
  checkInputs = [ roslaunch ];
  propagatedBuildInputs = [ costmap-2d actionlib-msgs tf roscpp move-base-msgs nav-msgs actionlib std-msgs visualization-msgs geometry-msgs map-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Lightweight frontier-based exploration.'';
    #license = lib.licenses.BSD;
  };
}
