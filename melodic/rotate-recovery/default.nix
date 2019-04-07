
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, costmap-2d, pluginlib, base-local-planner, cmake-modules, tf2-geometry-msgs, nav-core, catkin, tf2-ros, tf2, eigen, angles, roscpp, geometry-msgs }:
buildRosPackage {
  pname = "ros-melodic-rotate-recovery";
  version = "1.16.2";

  src = fetchurl {
    url = https://github.com/ros-gbp/navigation-release/archive/release/melodic/rotate_recovery/1.16.2-0.tar.gz;
    sha256 = "c16310caacd9352ba89b5eb4903bb43349ee2b781b77157a33df6cfa39bc6a07";
  };

  buildInputs = [ costmap-2d cmake-modules base-local-planner pluginlib tf2-geometry-msgs nav-core tf2-ros tf2 angles roscpp geometry-msgs eigen ];
  propagatedBuildInputs = [ costmap-2d pluginlib tf2-geometry-msgs nav-core tf2-ros tf2 eigen roscpp geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package provides a recovery behavior for the navigation stack that attempts to clear space by performing a 360 degree rotation of the robot.'';
    #license = lib.licenses.BSD;
  };
}
