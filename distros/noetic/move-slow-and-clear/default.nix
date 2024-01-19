
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake-modules, costmap-2d, geometry-msgs, nav-core, pluginlib, roscpp }:
buildRosPackage {
  pname = "ros-noetic-move-slow-and-clear";
  version = "1.17.3-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/navigation-release/archive/release/noetic/move_slow_and_clear/1.17.3-1.tar.gz";
    name = "1.17.3-1.tar.gz";
    sha256 = "543dac0dcb1acff0e0926a5ef0036e904337de5f75048373e544657c0b584d30";
  };

  buildType = "catkin";
  buildInputs = [ catkin cmake-modules ];
  propagatedBuildInputs = [ costmap-2d geometry-msgs nav-core pluginlib roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''move_slow_and_clear'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
