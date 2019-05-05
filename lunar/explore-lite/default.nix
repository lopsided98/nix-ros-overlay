
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, costmap-2d, actionlib-msgs, catkin, roscpp, move-base-msgs, nav-msgs, visualization-msgs, actionlib, std-msgs, roslaunch, tf, geometry-msgs, map-msgs }:
buildRosPackage {
  pname = "ros-lunar-explore-lite";
  version = "2.1.1";

  src = fetchurl {
    url = https://github.com/hrnr/m-explore-release/archive/release/lunar/explore_lite/2.1.1-0.tar.gz;
    sha256 = "713a1a840aeb1c4dee126055de03ab11bc82ac9ff10d2c7d2cf778d0d273bfc9";
  };

  buildInputs = [ costmap-2d actionlib-msgs roscpp move-base-msgs nav-msgs visualization-msgs actionlib std-msgs tf geometry-msgs map-msgs ];
  checkInputs = [ roslaunch ];
  propagatedBuildInputs = [ costmap-2d actionlib-msgs roscpp move-base-msgs nav-msgs visualization-msgs actionlib std-msgs tf geometry-msgs map-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Lightweight frontier-based exploration.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
