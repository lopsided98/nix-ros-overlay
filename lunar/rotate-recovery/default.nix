
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, costmap-2d, pluginlib, cmake-modules, base-local-planner, tf, nav-core, catkin, eigen, roscpp }:
buildRosPackage {
  pname = "ros-lunar-rotate-recovery";
  version = "1.15.2";

  src = fetchurl {
    url = https://github.com/ros-gbp/navigation-release/archive/release/lunar/rotate_recovery/1.15.2-0.tar.gz;
    sha256 = "2937b1415ed6848816da0f898d8ef09ed2165da94f474fdfbbfb59515349786c";
  };

  buildInputs = [ costmap-2d cmake-modules pluginlib base-local-planner nav-core tf roscpp eigen ];
  propagatedBuildInputs = [ costmap-2d pluginlib eigen nav-core tf roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package provides a recovery behavior for the navigation stack that attempts to clear space by performing a 360 degree rotation of the robot.'';
    #license = lib.licenses.BSD;
  };
}
