
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, actionlib-msgs, catkin, costmap-2d, geometry-msgs, map-msgs, move-base-msgs, nav-msgs, roscpp, roslaunch, std-msgs, tf, visualization-msgs }:
buildRosPackage {
  pname = "ros-noetic-explore-lite";
  version = "2.1.4-r1";

  src = fetchurl {
    url = "https://github.com/hrnr/m-explore-release/archive/release/noetic/explore_lite/2.1.4-1.tar.gz";
    name = "2.1.4-1.tar.gz";
    sha256 = "48ce6e2ae2ece1ead6f65af5845b7664712021c4e51db7330c97289a901bd782";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ roslaunch ];
  propagatedBuildInputs = [ actionlib actionlib-msgs costmap-2d geometry-msgs map-msgs move-base-msgs nav-msgs roscpp std-msgs tf visualization-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Lightweight frontier-based exploration.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
