
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, catkin, cmake-modules, geometry-msgs, grasping-msgs, message-generation, message-runtime, moveit-msgs, moveit-python, pcl-ros, roscpp, sensor-msgs, shape-msgs, tf }:
buildRosPackage {
  pname = "ros-melodic-simple-grasping";
  version = "0.4.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/simple_grasping-release/archive/release/melodic/simple_grasping/0.4.1-1.tar.gz";
    name = "0.4.1-1.tar.gz";
    sha256 = "5f4b636cc6d5e50fb1aabff62b7f43299aa56d4344fa82f74b17d0fa37990870";
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
