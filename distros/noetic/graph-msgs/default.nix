
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, message-generation, message-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-graph-msgs";
  version = "0.1.0-r2";

  src = fetchurl {
    url = "https://github.com/PickNikRobotics/graph_msgs-release/archive/release/noetic/graph_msgs/0.1.0-2.tar.gz";
    name = "0.1.0-2.tar.gz";
    sha256 = "ce7125a86592674cfafa8ae3ba856c85fdf5359b0207a7537841f532679f0b25";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ geometry-msgs message-runtime std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS messages for publishing graphs of different data types'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
