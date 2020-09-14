
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, base-local-planner, catkin, cmake-modules, costmap-2d, eigen, nav-core, pluginlib, roscpp, tf }:
buildRosPackage {
  pname = "ros-kinetic-rotate-recovery";
  version = "1.14.8-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/navigation-release/archive/release/kinetic/rotate_recovery/1.14.8-1.tar.gz";
    name = "1.14.8-1.tar.gz";
    sha256 = "e329cd4d8bd1d47dd47b50bbbceaae1f0087022536479af82a2c2ef04c53eb66";
  };

  buildType = "catkin";
  buildInputs = [ base-local-planner cmake-modules ];
  propagatedBuildInputs = [ costmap-2d eigen nav-core pluginlib roscpp tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package provides a recovery behavior for the navigation stack that attempts to clear space by performing a 360 degree rotation of the robot.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
