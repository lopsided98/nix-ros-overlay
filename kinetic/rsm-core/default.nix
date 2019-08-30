
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, pluginlib, actionlib-msgs, rsm-msgs, catkin, roscpp, actionlib, tf }:
buildRosPackage {
  pname = "ros-kinetic-rsm-core";
  version = "1.1.2-r1";

  src = fetchurl {
    url = https://github.com/MarcoStb1993/robot_statemachine-release/archive/release/kinetic/rsm_core/1.1.2-1.tar.gz;
    sha256 = "b18fd844fc383bc15894490698aecdd941f96bbae8600c3ba25232ca3bda727f";
  };

  buildInputs = [ pluginlib actionlib-msgs tf rsm-msgs actionlib roscpp ];
  propagatedBuildInputs = [ pluginlib rsm-msgs roscpp actionlib tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The statemachine package includes the Robot Statemachine's main functionality'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
