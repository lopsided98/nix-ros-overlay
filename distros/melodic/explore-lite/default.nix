
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, actionlib-msgs, catkin, costmap-2d, geometry-msgs, map-msgs, move-base-msgs, nav-msgs, roscpp, roslaunch, std-msgs, tf, visualization-msgs }:
buildRosPackage {
  pname = "ros-melodic-explore-lite";
  version = "2.1.4-r1";

  src = fetchurl {
    url = "https://github.com/hrnr/m-explore-release/archive/release/melodic/explore_lite/2.1.4-1.tar.gz";
    name = "2.1.4-1.tar.gz";
    sha256 = "54bba0170bf05baafe92894a693c3417ce791866035b2e6b7de408796f955ae1";
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
