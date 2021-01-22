
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake-modules, costmap-2d, geometry-msgs, nav-core, pluginlib, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-move-slow-and-clear";
  version = "1.14.9-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/navigation-release/archive/release/kinetic/move_slow_and_clear/1.14.9-1.tar.gz";
    name = "1.14.9-1.tar.gz";
    sha256 = "b9dc507afa1f19807d0a39dbb05cf23075a7d4087ad3db37fe68a34893d6a418";
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
