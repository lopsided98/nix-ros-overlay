
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, costmap-2d, pluginlib, cmake-modules, base-local-planner, tf, nav-core, catkin, eigen, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-rotate-recovery";
  version = "1.14.4";

  src = fetchurl {
    url = https://github.com/ros-gbp/navigation-release/archive/release/kinetic/rotate_recovery/1.14.4-0.tar.gz;
    sha256 = "386854705d6d49072b5fab44eb7e21f3a41b6902fb8f90e8736db0311cf21dee";
  };

  buildInputs = [ costmap-2d cmake-modules pluginlib base-local-planner tf nav-core roscpp eigen ];
  propagatedBuildInputs = [ costmap-2d pluginlib eigen nav-core tf roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package provides a recovery behavior for the navigation stack that attempts to clear space by performing a 360 degree rotation of the robot.'';
    #license = lib.licenses.BSD;
  };
}
