
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, dynamic-reconfigure, actionlib-msgs, tf, catkin, mrpt1, visualization-msgs, actionlib, mrpt-bridge, roscpp, geometry-msgs }:
buildRosPackage {
  pname = "ros-kinetic-mrpt-reactivenav2d";
  version = "0.1.23";

  src = fetchurl {
    url = https://github.com/mrpt-ros-pkg-release/mrpt_navigation-release/archive/release/kinetic/mrpt_reactivenav2d/0.1.23-0.tar.gz;
    sha256 = "0aa5d7e0662feddb0723c99a653806e4eb6beb928ff068de65a1b1620014b4a5";
  };

  propagatedBuildInputs = [ mrpt-bridge actionlib-msgs tf roscpp mrpt1 actionlib dynamic-reconfigure visualization-msgs geometry-msgs ];
  nativeBuildInputs = [ mrpt-bridge actionlib-msgs tf catkin roscpp mrpt1 actionlib dynamic-reconfigure visualization-msgs geometry-msgs ];

  meta = {
    description = ''Reactive navigation for 2D robots using MRPT navigation algorithms (TP-Space)'';
    #license = lib.licenses.BSD;
  };
}
