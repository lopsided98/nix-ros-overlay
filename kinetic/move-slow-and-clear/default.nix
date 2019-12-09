
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, geometry-msgs, pluginlib, cmake-modules, catkin, costmap-2d, nav-core, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-move-slow-and-clear";
  version = "1.14.5-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/navigation-release/archive/release/kinetic/move_slow_and_clear/1.14.5-1.tar.gz";
    name = "1.14.5-1.tar.gz";
    sha256 = "0095dfefff660fcf940441ed5ef62952ff939c0ecb4d6dd4ac67e6a4b3feaf0f";
  };

  buildType = "catkin";
  buildInputs = [ geometry-msgs pluginlib cmake-modules costmap-2d nav-core roscpp ];
  propagatedBuildInputs = [ geometry-msgs pluginlib costmap-2d nav-core roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''move_slow_and_clear'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
