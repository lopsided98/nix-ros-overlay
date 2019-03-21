
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib-msgs, catkin, pythonPackages, sound-play, rostest, message-generation, message-runtime, rospy, std-msgs, rosunit }:
buildRosPackage {
  pname = "ros-kinetic-tts";
  version = "1.0.1";

  src = fetchurl {
    url = https://github.com/aws-gbp/tts-release/archive/release/kinetic/tts/1.0.1-0.tar.gz;
    sha256 = "c31519ac5ff27c8dd3749b6e6866d1108a0c76619a15ebd7a8a9f1b58b4ab1c6";
  };

  checkInputs = [ rostest pythonPackages.mock rosunit ];
  propagatedBuildInputs = [ pythonPackages.boto3 message-runtime actionlib-msgs rospy std-msgs sound-play ];
  nativeBuildInputs = [ actionlib-msgs catkin sound-play rostest pythonPackages.boto3 message-generation rospy std-msgs rosunit ];

  meta = {
    description = ''Package enabling a robot to speak with a human voice by providing a Text-To-Speech ROS service'';
    #license = lib.licenses.Apache 2.0;
  };
}
