
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, catkin-virtualenv, dialogflow-task-executive, gdrive-ros, message-generation, message-runtime, python3Packages, rospy, rostest, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-google-chat-ros";
  version = "2.1.26-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_3rdparty-release/archive/release/noetic/google_chat_ros/2.1.26-1.tar.gz";
    name = "2.1.26-1.tar.gz";
    sha256 = "0fe151f2c055a11ba94868b089abfebb42c52f438dc809b287f728ef1909d431";
  };

  buildType = "catkin";
  buildInputs = [ catkin catkin-virtualenv message-generation python3Packages.setuptools ];
  checkInputs = [ rostest ];
  propagatedBuildInputs = [ dialogflow-task-executive gdrive-ros message-runtime rospy std-msgs ];
  nativeBuildInputs = [ catkin python3Packages.setuptools ];

  meta = {
    description = ''Use Google Chat API clients via ROS'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
