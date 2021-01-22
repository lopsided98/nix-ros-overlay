
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, catkin, cmake-modules, geometry-msgs, grasping-msgs, message-generation, message-runtime, moveit-msgs, moveit-python, pcl-ros, roscpp, sensor-msgs, shape-msgs, tf }:
buildRosPackage {
  pname = "ros-kinetic-simple-grasping";
  version = "0.2.2";

  src = fetchurl {
    url = "https://github.com/ros-gbp/simple_grasping-release/archive/release/kinetic/simple_grasping/0.2.2-0.tar.gz";
    name = "0.2.2-0.tar.gz";
    sha256 = "7be19db8ffec57bdfa8de7cfbc121aa7ce703ef9e43bf4d9f8c5499448649059";
  };

  buildType = "catkin";
  buildInputs = [ cmake-modules message-generation ];
  propagatedBuildInputs = [ actionlib geometry-msgs grasping-msgs message-runtime moveit-msgs moveit-python pcl-ros roscpp sensor-msgs shape-msgs tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Basic grasping applications and demos.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
