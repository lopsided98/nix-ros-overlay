
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib-msgs, catkin, pythonPackages, sound-play, rostest, message-generation, message-runtime, rospy, std-msgs, rosunit }:
buildRosPackage {
  pname = "ros-melodic-tts";
  version = "1.0.1";

  src = fetchurl {
    url = https://github.com/aws-gbp/tts-release/archive/release/melodic/tts/1.0.1-0.tar.gz;
    sha256 = "1d5dd8813c3e0cf4e9e75bd364a93f1b0b02072ddd561fa0d316a75cd0a9d708";
  };

  buildInputs = [ actionlib-msgs sound-play rostest pythonPackages.boto3 message-generation rospy std-msgs rosunit ];
  checkInputs = [ rostest pythonPackages.mock rosunit ];
  propagatedBuildInputs = [ actionlib-msgs sound-play pythonPackages.boto3 message-runtime rospy std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Package enabling a robot to speak with a human voice by providing a Text-To-Speech ROS service'';
    license = with lib.licenses; [ asl20 ];
  };
}
