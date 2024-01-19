
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, catkin, cmake-modules, geometry-msgs, grasping-msgs, message-generation, message-runtime, moveit-msgs, moveit-python, pcl-ros, roscpp, sensor-msgs, shape-msgs, tf }:
buildRosPackage {
  pname = "ros-noetic-simple-grasping";
  version = "0.4.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/simple_grasping-release/archive/release/noetic/simple_grasping/0.4.1-1.tar.gz";
    name = "0.4.1-1.tar.gz";
    sha256 = "e6e393db1588dc81d41692a5d3a04392fdca01e39510e5d7cab732ba7634718f";
  };

  buildType = "catkin";
  buildInputs = [ catkin cmake-modules message-generation ];
  propagatedBuildInputs = [ actionlib geometry-msgs grasping-msgs message-runtime moveit-msgs moveit-python pcl-ros roscpp sensor-msgs shape-msgs tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Basic grasping applications and demos.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
