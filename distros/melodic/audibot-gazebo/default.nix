
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, gazebo-ros, gazebo-ros-pkgs, robot-state-publisher, roscpp, rospy, rostest, rviz, tf }:
buildRosPackage {
  pname = "ros-melodic-audibot-gazebo";
  version = "0.1.1-r1";

  src = fetchurl {
    url = "https://github.com/robustify/audibot-release/archive/release/melodic/audibot_gazebo/0.1.1-1.tar.gz";
    name = "0.1.1-1.tar.gz";
    sha256 = "dba32128f98d3c8f905f5e16401ddbb032910d736c6202908917edf146a76a41";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ rospy rostest ];
  propagatedBuildInputs = [ gazebo-ros gazebo-ros-pkgs robot-state-publisher roscpp rviz tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Gazebo model plugin to simulate Audibot'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
