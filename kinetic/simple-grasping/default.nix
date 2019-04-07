
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, shape-msgs, cmake-modules, moveit-python, sensor-msgs, catkin, roscpp, message-generation, message-runtime, actionlib, moveit-msgs, tf, pcl-ros, grasping-msgs, geometry-msgs }:
buildRosPackage {
  pname = "ros-kinetic-simple-grasping";
  version = "0.2.2";

  src = fetchurl {
    url = https://github.com/ros-gbp/simple_grasping-release/archive/release/kinetic/simple_grasping/0.2.2-0.tar.gz;
    sha256 = "7be19db8ffec57bdfa8de7cfbc121aa7ce703ef9e43bf4d9f8c5499448649059";
  };

  buildInputs = [ shape-msgs cmake-modules sensor-msgs roscpp message-generation actionlib pcl-ros moveit-msgs tf grasping-msgs geometry-msgs ];
  propagatedBuildInputs = [ shape-msgs moveit-python sensor-msgs roscpp message-runtime actionlib moveit-msgs tf pcl-ros grasping-msgs geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Basic grasping applications and demos.'';
    #license = lib.licenses.BSD;
  };
}
