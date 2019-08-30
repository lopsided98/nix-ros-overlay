
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake-modules, rsm-msgs, catkin, roscpp, rviz, interactive-markers, visualization-msgs }:
buildRosPackage {
  pname = "ros-kinetic-rsm-rviz-plugins";
  version = "1.1.2-r1";

  src = fetchurl {
    url = https://github.com/MarcoStb1993/robot_statemachine-release/archive/release/kinetic/rsm_rviz_plugins/1.1.2-1.tar.gz;
    sha256 = "830b2259fe89960b01ffc67ca49ee7a061e1353358e12f2c1dcc1a350ce53d9c";
  };

  buildInputs = [ cmake-modules rsm-msgs roscpp rviz interactive-markers visualization-msgs ];
  propagatedBuildInputs = [ cmake-modules rsm-msgs roscpp rviz interactive-markers visualization-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The rsm_rviz_plugins package includes the Robot Statemachine GUI plugin for RViz and the waypoint visualization'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
