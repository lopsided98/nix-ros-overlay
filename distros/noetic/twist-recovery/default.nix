
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, base-local-planner, catkin, costmap-2d, geometry-msgs, nav-core, pluginlib, tf2-geometry-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-noetic-twist-recovery";
  version = "0.4.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/navigation_experimental-release/archive/release/noetic/twist_recovery/0.4.1-1.tar.gz";
    name = "0.4.1-1.tar.gz";
    sha256 = "d13f9a52e05f8bd2a504d76a1147695378622cf1f3b0eaff84fe6607f6f36f4e";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ base-local-planner costmap-2d geometry-msgs nav-core pluginlib tf2-geometry-msgs tf2-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A recovery behavior that performs a particular used-defined twist.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
