
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib-msgs, catkin, catkin-virtualenv, dialogflow-task-executive, gdrive-ros, message-generation, message-runtime, python3Packages, rospy, rostest, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-google-chat-ros";
  version = "2.1.28-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_3rdparty-release/archive/release/noetic/google_chat_ros/2.1.28-1.tar.gz";
    name = "2.1.28-1.tar.gz";
    sha256 = "0b437137997098219f402e1430b50d0de05ac7cf78e0a28d1f6fd6d681d176c3";
  };

  buildType = "catkin";
  buildInputs = [ catkin catkin-virtualenv message-generation python3Packages.setuptools ];
  checkInputs = [ rostest ];
  propagatedBuildInputs = [ actionlib-msgs dialogflow-task-executive gdrive-ros message-runtime rospy std-msgs ];
  nativeBuildInputs = [ catkin python3Packages.setuptools ];

  meta = {
    description = ''Use Google Chat API clients via ROS'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
