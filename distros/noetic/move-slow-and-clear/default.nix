
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake-modules, costmap-2d, geometry-msgs, nav-core, pluginlib, roscpp }:
buildRosPackage {
  pname = "ros-noetic-move-slow-and-clear";
  version = "1.17.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/navigation-release/archive/release/noetic/move_slow_and_clear/1.17.0-1.tar.gz";
    name = "1.17.0-1.tar.gz";
    sha256 = "74eb81465481fecc2a5b797484596e189b656fade5c80069f467984ad882be44";
  };

  buildType = "catkin";
  buildInputs = [ cmake-modules ];
  propagatedBuildInputs = [ costmap-2d geometry-msgs nav-core pluginlib roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''move_slow_and_clear'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
