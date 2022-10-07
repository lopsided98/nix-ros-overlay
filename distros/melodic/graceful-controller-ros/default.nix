
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, angles, base-local-planner, catkin, costmap-2d, dynamic-reconfigure, geometry-msgs, graceful-controller, nav-core, nav-msgs, pluginlib, roscpp, std-msgs, tf2-geometry-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-melodic-graceful-controller-ros";
  version = "0.4.5-r1";

  src = fetchurl {
    url = "https://github.com/mikeferguson/graceful_controller-gbp/archive/release/melodic/graceful_controller_ros/0.4.5-1.tar.gz";
    name = "0.4.5-1.tar.gz";
    sha256 = "0fa7f1fb32f33c95ea89aaf25e00ddfb0d27a73533b62bd80ff05af34667c0a8";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ angles base-local-planner costmap-2d dynamic-reconfigure geometry-msgs graceful-controller nav-core nav-msgs pluginlib roscpp std-msgs tf2-geometry-msgs tf2-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A controller. Some say it might be graceful.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
