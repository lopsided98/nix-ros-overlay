
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, base-local-planner, catkin, cmake-modules, costmap-2d, eigen, nav-core, pluginlib, roscpp, tf }:
buildRosPackage {
  pname = "ros-kinetic-rotate-recovery";
  version = "1.14.9-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/navigation-release/archive/release/kinetic/rotate_recovery/1.14.9-1.tar.gz";
    name = "1.14.9-1.tar.gz";
    sha256 = "8a10b809cb83a9e6f8c92a3c075592b1285a3fc39becc8b33effa9c4aee2c85f";
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
