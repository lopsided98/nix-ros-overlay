
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib-msgs, catkin, message-generation, message-runtime, pythonPackages, rospy, rostest, rosunit, sound-play, std-msgs }:
buildRosPackage {
  pname = "ros-kinetic-tts";
  version = "1.0.2-r1";

  src = fetchurl {
    url = "https://github.com/aws-gbp/tts-release/archive/release/kinetic/tts/1.0.2-1.tar.gz";
    name = "1.0.2-1.tar.gz";
    sha256 = "81335f5408a962901010ab231a95ee3904ac8c6eedccc43a927ba323c2379113";
  };

  buildType = "catkin";
  buildInputs = [ message-generation rostest rosunit ];
  checkInputs = [ pythonPackages.mock ];
  propagatedBuildInputs = [ actionlib-msgs message-runtime pythonPackages.boto3 rospy sound-play std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Package enabling a robot to speak with a human voice by providing a Text-To-Speech ROS service'';
    license = with lib.licenses; [ asl20 ];
  };
}
