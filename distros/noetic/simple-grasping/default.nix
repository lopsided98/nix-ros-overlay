
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, catkin, cmake-modules, geometry-msgs, grasping-msgs, message-generation, message-runtime, moveit-msgs, moveit-python, pcl-ros, roscpp, sensor-msgs, shape-msgs, tf, vtkWithQt4 }:
buildRosPackage {
  pname = "ros-noetic-simple-grasping";
  version = "0.4.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/simple_grasping-release/archive/release/noetic/simple_grasping/0.4.0-1.tar.gz";
    name = "0.4.0-1.tar.gz";
    sha256 = "57d79f160a4eff3aa4cfb842248b85c9dcc8c5ff2a28154348133f7ca54ac2cc";
  };

  buildType = "catkin";
  buildInputs = [ cmake-modules message-generation ];
  propagatedBuildInputs = [ actionlib geometry-msgs grasping-msgs message-runtime moveit-msgs moveit-python pcl-ros roscpp sensor-msgs shape-msgs tf vtkWithQt4 ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Basic grasping applications and demos.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
