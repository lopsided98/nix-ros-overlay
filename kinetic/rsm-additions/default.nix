
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, pluginlib, actionlib-msgs, rsm-msgs, catkin, rsm-core, move-base-msgs, actionlib, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-rsm-additions";
  version = "1.1.2-r1";

  src = fetchurl {
    url = https://github.com/MarcoStb1993/robot_statemachine-release/archive/release/kinetic/rsm_additions/1.1.2-1.tar.gz;
    sha256 = "b40441e940455206af2f09947239434be103fce20e7b5997606518bac712193e";
  };

  buildInputs = [ pluginlib actionlib-msgs rsm-msgs rsm-core move-base-msgs actionlib roscpp ];
  propagatedBuildInputs = [ pluginlib rsm-msgs rsm-core move-base-msgs actionlib roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The rsm_additions package includes plugins for the Robot Statemachine and exemplary launch files'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
