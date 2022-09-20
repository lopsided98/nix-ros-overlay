
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, angles, base-local-planner, catkin, costmap-2d, dynamic-reconfigure, geometry-msgs, graceful-controller, nav-core, nav-msgs, pluginlib, roscpp, std-msgs, tf2-geometry-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-melodic-graceful-controller-ros";
  version = "0.4.4-r1";

  src = fetchurl {
    url = "https://github.com/mikeferguson/graceful_controller-gbp/archive/release/melodic/graceful_controller_ros/0.4.4-1.tar.gz";
    name = "0.4.4-1.tar.gz";
    sha256 = "496862ecd860ae3113c7a2fa9ec41f1e6e50b5165a34d9a595262856bb99662e";
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
