
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, geometry-msgs, std-msgs, map-msgs, tf, actionlib, catkin, roslaunch, costmap-2d, actionlib-msgs, visualization-msgs, roscpp, nav-msgs, move-base-msgs }:
buildRosPackage {
  pname = "ros-kinetic-explore-lite";
  version = "2.1.1";

  src = fetchurl {
    url = "https://github.com/hrnr/m-explore-release/archive/release/kinetic/explore_lite/2.1.1-0.tar.gz";
    name = "2.1.1-0.tar.gz";
    sha256 = "5c662edd509409670e5b618a63a27417ab40defffdd824949fa1680df0442652";
  };

  buildType = "catkin";
  buildInputs = [ geometry-msgs std-msgs map-msgs tf actionlib costmap-2d actionlib-msgs visualization-msgs roscpp nav-msgs move-base-msgs ];
  checkInputs = [ roslaunch ];
  propagatedBuildInputs = [ geometry-msgs std-msgs map-msgs tf actionlib costmap-2d actionlib-msgs visualization-msgs roscpp nav-msgs move-base-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Lightweight frontier-based exploration.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
