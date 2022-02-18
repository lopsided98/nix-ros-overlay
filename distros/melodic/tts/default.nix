
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, actionlib-msgs, catkin, message-generation, message-runtime, pythonPackages, rospy, rostest, rosunit, sound-play, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-tts";
  version = "1.0.3-r1";

  src = fetchurl {
    url = "https://github.com/aws-gbp/tts-release/archive/release/melodic/tts/1.0.3-1.tar.gz";
    name = "1.0.3-1.tar.gz";
    sha256 = "58c5eeaf9d04747a09cdcf3cdadd673b1dcb20afd3173c8d62a090b7b407f172";
  };

  buildType = "catkin";
  buildInputs = [ message-generation rostest rosunit ];
  checkInputs = [ pythonPackages.mock ];
  propagatedBuildInputs = [ actionlib actionlib-msgs message-runtime pythonPackages.boto3 rospy sound-play std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Package enabling a robot to speak with a human voice by providing a Text-To-Speech ROS service'';
    license = with lib.licenses; [ asl20 ];
  };
}
