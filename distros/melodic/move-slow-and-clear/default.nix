
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake-modules, costmap-2d, geometry-msgs, nav-core, pluginlib, roscpp }:
buildRosPackage {
  pname = "ros-melodic-move-slow-and-clear";
  version = "1.16.5-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/navigation-release/archive/release/melodic/move_slow_and_clear/1.16.5-1.tar.gz";
    name = "1.16.5-1.tar.gz";
    sha256 = "729fb7ba60cc55cdb265843e46d3d821ef9a3f74290051df79b0dbffcdf44ecc";
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
