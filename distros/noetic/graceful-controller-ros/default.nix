
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, angles, base-local-planner, catkin, costmap-2d, dynamic-reconfigure, geometry-msgs, graceful-controller, nav-core, nav-msgs, pluginlib, roscpp, std-msgs, tf2-geometry-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-noetic-graceful-controller-ros";
  version = "0.4.8-r1";

  src = fetchurl {
    url = "https://github.com/mikeferguson/graceful_controller-gbp/archive/release/noetic/graceful_controller_ros/0.4.8-1.tar.gz";
    name = "0.4.8-1.tar.gz";
    sha256 = "fd2f30b65df5ee1efb7c3ba5b5256be2d57b1cffc582cd94fd7c1c9d0b15a12b";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ angles base-local-planner costmap-2d dynamic-reconfigure geometry-msgs graceful-controller nav-core nav-msgs pluginlib roscpp std-msgs tf2-geometry-msgs tf2-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A controller. Some say it might be graceful.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
