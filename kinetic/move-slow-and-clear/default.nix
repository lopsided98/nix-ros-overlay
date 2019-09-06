
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, costmap-2d, pluginlib, cmake-modules, nav-core, catkin, roscpp, geometry-msgs }:
buildRosPackage {
  pname = "ros-kinetic-move-slow-and-clear";
  version = "1.14.4";

  src = fetchurl {
    url = "https://github.com/ros-gbp/navigation-release/archive/release/kinetic/move_slow_and_clear/1.14.4-0.tar.gz";
    name = "1.14.4-0.tar.gz";
    sha256 = "4c55a4875c85a1b84a76f53c2b99f10145048df15533a2a4e13d21ec7b196462";
  };

  buildType = "catkin";
  buildInputs = [ costmap-2d cmake-modules pluginlib nav-core roscpp geometry-msgs ];
  propagatedBuildInputs = [ costmap-2d pluginlib nav-core roscpp geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''move_slow_and_clear'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
