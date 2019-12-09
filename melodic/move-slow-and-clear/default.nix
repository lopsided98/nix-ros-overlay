
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, geometry-msgs, pluginlib, cmake-modules, catkin, costmap-2d, nav-core, roscpp }:
buildRosPackage {
  pname = "ros-melodic-move-slow-and-clear";
  version = "1.16.3-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/navigation-release/archive/release/melodic/move_slow_and_clear/1.16.3-1.tar.gz";
    name = "1.16.3-1.tar.gz";
    sha256 = "5e2ae34ff62c160c7e3a3dc2d1433bda1ba838310ff407c3ddb1a65598096c19";
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
