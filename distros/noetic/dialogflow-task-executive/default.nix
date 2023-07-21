
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib-msgs, catkin, catkin-virtualenv, message-generation, message-runtime, roslaunch, rostest, speech-recognition-msgs, std-msgs, topic-tools }:
buildRosPackage {
  pname = "ros-noetic-dialogflow-task-executive";
  version = "2.1.27-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_3rdparty-release/archive/release/noetic/dialogflow_task_executive/2.1.27-1.tar.gz";
    name = "2.1.27-1.tar.gz";
    sha256 = "cd19ffeec0c10bfcd0e9a0bda422b51e7ead6b6f4f88261c6279201f6dc0967d";
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
