
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib-msgs, catkin, catkin-virtualenv, message-generation, message-runtime, roslaunch, rostest, speech-recognition-msgs, std-msgs, topic-tools }:
buildRosPackage {
  pname = "ros-noetic-dialogflow-task-executive";
  version = "2.1.26-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_3rdparty-release/archive/release/noetic/dialogflow_task_executive/2.1.26-1.tar.gz";
    name = "2.1.26-1.tar.gz";
    sha256 = "30a1325eed964aa1e0d35ad4764ea7b4e3de5e0246b155ae051fc02b3308c35e";
  };

  buildType = "catkin";
  buildInputs = [ actionlib-msgs catkin catkin-virtualenv message-generation roslaunch std-msgs ];
  checkInputs = [ rostest ];
  propagatedBuildInputs = [ message-runtime speech-recognition-msgs topic-tools ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A ROS package for Google Dialogflow and launching apps via Dialogflow'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
