
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, pcl-ros, message-generation, sensor-msgs, geometry-msgs, moveit-python, tf, actionlib, shape-msgs, grasping-msgs, cmake-modules, catkin, moveit-msgs, roscpp, message-runtime }:
buildRosPackage {
  pname = "ros-kinetic-simple-grasping";
  version = "0.2.2";

  src = fetchurl {
    url = "https://github.com/ros-gbp/simple_grasping-release/archive/release/kinetic/simple_grasping/0.2.2-0.tar.gz";
    name = "0.2.2-0.tar.gz";
    sha256 = "7be19db8ffec57bdfa8de7cfbc121aa7ce703ef9e43bf4d9f8c5499448649059";
  };

  buildType = "catkin";
  buildInputs = [ pcl-ros sensor-msgs geometry-msgs actionlib shape-msgs tf cmake-modules grasping-msgs moveit-msgs roscpp message-generation ];
  propagatedBuildInputs = [ pcl-ros sensor-msgs geometry-msgs moveit-python tf actionlib shape-msgs grasping-msgs moveit-msgs roscpp message-runtime ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Basic grasping applications and demos.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
