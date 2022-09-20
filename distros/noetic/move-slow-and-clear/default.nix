
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake-modules, costmap-2d, geometry-msgs, nav-core, pluginlib, roscpp }:
buildRosPackage {
  pname = "ros-noetic-move-slow-and-clear";
  version = "1.17.2-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/navigation-release/archive/release/noetic/move_slow_and_clear/1.17.2-1.tar.gz";
    name = "1.17.2-1.tar.gz";
    sha256 = "40d597dddc79fa8f15830ade5bbee6f1f72cb748bde6795eb987a1073cbb353c";
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
