
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, actionlib-msgs, catkin, costmap-2d, geometry-msgs, map-msgs, move-base-msgs, nav-msgs, roscpp, roslaunch, std-msgs, tf, visualization-msgs }:
buildRosPackage {
  pname = "ros-kinetic-explore-lite";
  version = "2.1.1";

  src = fetchurl {
    url = "https://github.com/hrnr/m-explore-release/archive/release/kinetic/explore_lite/2.1.1-0.tar.gz";
    name = "2.1.1-0.tar.gz";
    sha256 = "5c662edd509409670e5b618a63a27417ab40defffdd824949fa1680df0442652";
  };

  buildType = "catkin";
  checkInputs = [ roslaunch ];
  propagatedBuildInputs = [ actionlib actionlib-msgs costmap-2d geometry-msgs map-msgs move-base-msgs nav-msgs roscpp std-msgs tf visualization-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Lightweight frontier-based exploration.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
