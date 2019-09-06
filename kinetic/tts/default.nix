
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib-msgs, catkin, pythonPackages, sound-play, rostest, message-generation, message-runtime, rospy, std-msgs, rosunit }:
buildRosPackage {
  pname = "ros-kinetic-tts";
  version = "1.0.2-r1";

  src = fetchurl {
    url = "https://github.com/aws-gbp/tts-release/archive/release/kinetic/tts/1.0.2-1.tar.gz";
    name = "1.0.2-1.tar.gz";
    sha256 = "81335f5408a962901010ab231a95ee3904ac8c6eedccc43a927ba323c2379113";
  };

  buildType = "catkin";
  buildInputs = [ actionlib-msgs sound-play rostest pythonPackages.boto3 message-generation rospy std-msgs rosunit ];
  checkInputs = [ rostest pythonPackages.mock rosunit ];
  propagatedBuildInputs = [ actionlib-msgs sound-play pythonPackages.boto3 message-runtime rospy std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Package enabling a robot to speak with a human voice by providing a Text-To-Speech ROS service'';
    license = with lib.licenses; [ asl20 ];
  };
}
