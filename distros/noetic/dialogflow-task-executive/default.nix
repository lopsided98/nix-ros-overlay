
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib-msgs, catkin, catkin-virtualenv, message-generation, message-runtime, roslaunch, rostest, speech-recognition-msgs, std-msgs, topic-tools }:
buildRosPackage {
  pname = "ros-noetic-dialogflow-task-executive";
  version = "2.1.28-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_3rdparty-release/archive/release/noetic/dialogflow_task_executive/2.1.28-1.tar.gz";
    name = "2.1.28-1.tar.gz";
    sha256 = "f56221057407eef4dad3da68038746ac600c8019e70600329dd04a721cf2daa4";
  };

  buildType = "catkin";
  buildInputs = [ catkin catkin-virtualenv message-generation roslaunch ];
  checkInputs = [ rostest ];
  propagatedBuildInputs = [ actionlib-msgs message-runtime speech-recognition-msgs std-msgs topic-tools ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A ROS package for Google Dialogflow and launching apps via Dialogflow'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
