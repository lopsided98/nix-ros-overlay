
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib-msgs, catkin, message-generation, message-runtime, pythonPackages, rospy, rostest, rosunit, sound-play, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-tts";
  version = "1.0.2-r1";

  src = fetchurl {
    url = "https://github.com/aws-gbp/tts-release/archive/release/melodic/tts/1.0.2-1.tar.gz";
    name = "1.0.2-1.tar.gz";
    sha256 = "ff9513ecc2e040bc38e882badee1407e351c9c1abb6cd8c75ec1ac81dcfe5cd1";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation rostest rosunit ];
  checkInputs = [ pythonPackages.mock ];
  propagatedBuildInputs = [ actionlib-msgs message-runtime pythonPackages.boto3 rospy sound-play std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Package enabling a robot to speak with a human voice by providing a Text-To-Speech ROS service'';
    license = with lib.licenses; [ asl20 ];
  };
}
