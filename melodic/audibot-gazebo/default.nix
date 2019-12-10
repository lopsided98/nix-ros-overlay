
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, gazebo-ros, gazebo-ros-pkgs, robot-state-publisher, roscpp, rospy, rostest, rviz, tf }:
buildRosPackage {
  pname = "ros-melodic-audibot-gazebo";
  version = "0.1.0-r1";

  src = fetchurl {
    url = "https://github.com/robustify/audibot-release/archive/release/melodic/audibot_gazebo/0.1.0-1.tar.gz";
    name = "0.1.0-1.tar.gz";
    sha256 = "1325a90b8357006a4558333457a3abf62096b18e0cacce3cb1ce68996f0ee0f9";
  };

  buildType = "catkin";
  checkInputs = [ rospy rostest ];
  propagatedBuildInputs = [ gazebo-ros gazebo-ros-pkgs robot-state-publisher roscpp rviz tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Gazebo model plugin to simulate Audibot'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
