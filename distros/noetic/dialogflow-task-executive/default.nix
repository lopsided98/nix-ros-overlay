
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib-msgs, catkin, catkin-virtualenv, message-generation, message-runtime, roslaunch, rostest, speech-recognition-msgs, std-msgs, topic-tools }:
buildRosPackage {
  pname = "ros-noetic-dialogflow-task-executive";
  version = "2.1.31-r3";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_3rdparty-release/archive/release/noetic/dialogflow_task_executive/2.1.31-3.tar.gz";
    name = "2.1.31-3.tar.gz";
    sha256 = "c8e33d8b06740e4f4c4e84afd78e36fd4d04434b9b91c568da674e164edcd0e6";
  };

  buildType = "catkin";
  buildInputs = [ catkin catkin-virtualenv message-generation roslaunch ];
  checkInputs = [ rostest ];
  propagatedBuildInputs = [ actionlib-msgs message-runtime speech-recognition-msgs std-msgs topic-tools ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "A ROS package for Google Dialogflow and launching apps via Dialogflow";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
