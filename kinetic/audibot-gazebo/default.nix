
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, gazebo-ros, gazebo-ros-pkgs, robot-state-publisher, roscpp, rospy, rostest, rviz, tf }:
buildRosPackage {
  pname = "ros-kinetic-audibot-gazebo";
  version = "0.1.0";

  src = fetchurl {
    url = "https://github.com/robustify/audibot-release/archive/release/kinetic/audibot_gazebo/0.1.0-0.tar.gz";
    name = "0.1.0-0.tar.gz";
    sha256 = "92aa9421649812ed8e7e2551c3f43e9d100f50e112d33795a95874a2eacfa7ea";
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
