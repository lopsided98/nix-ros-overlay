
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib-msgs, catkin, catkin-virtualenv, dialogflow-task-executive, gdrive-ros, message-generation, message-runtime, python3Packages, rospy, rostest, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-google-chat-ros";
  version = "2.1.31-r3";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_3rdparty-release/archive/release/noetic/google_chat_ros/2.1.31-3.tar.gz";
    name = "2.1.31-3.tar.gz";
    sha256 = "635d675a39c34f39db4c0eaa26dbb8f5321e408a76a14003f3ba9b42fac6057d";
  };

  buildType = "catkin";
  buildInputs = [ catkin catkin-virtualenv message-generation python3Packages.setuptools ];
  checkInputs = [ rostest ];
  propagatedBuildInputs = [ actionlib-msgs dialogflow-task-executive gdrive-ros message-runtime rospy std-msgs ];
  nativeBuildInputs = [ catkin python3Packages.setuptools ];

  meta = {
    description = "Use Google Chat API clients via ROS";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
