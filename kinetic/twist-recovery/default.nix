
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, geometry-msgs, pluginlib, catkin, base-local-planner, costmap-2d, nav-core }:
buildRosPackage {
  pname = "ros-kinetic-twist-recovery";
  version = "0.2.2-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/navigation_experimental-release/archive/release/kinetic/twist_recovery/0.2.2-1.tar.gz";
    name = "0.2.2-1.tar.gz";
    sha256 = "a07925b815492dcd265d99078eadb63cbaa1bb70ca163d9085959fe266bb3217";
  };

  buildType = "catkin";
  buildInputs = [ geometry-msgs pluginlib base-local-planner costmap-2d nav-core ];
  propagatedBuildInputs = [ geometry-msgs pluginlib base-local-planner costmap-2d nav-core ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A recovery behavior that performs a particular used-defined twist.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
