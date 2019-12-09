
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, message-generation, std-msgs, pythonPackages, catkin, rosunit, sound-play, actionlib-msgs, rospy, message-runtime, rostest }:
buildRosPackage {
  pname = "ros-melodic-tts";
  version = "1.0.2-r1";

  src = fetchurl {
    url = "https://github.com/aws-gbp/tts-release/archive/release/melodic/tts/1.0.2-1.tar.gz";
    name = "1.0.2-1.tar.gz";
    sha256 = "ff9513ecc2e040bc38e882badee1407e351c9c1abb6cd8c75ec1ac81dcfe5cd1";
  };

  buildType = "catkin";
  buildInputs = [ pythonPackages.boto3 std-msgs rosunit sound-play actionlib-msgs rospy message-generation rostest ];
  checkInputs = [ pythonPackages.mock rostest rosunit ];
  propagatedBuildInputs = [ pythonPackages.boto3 std-msgs sound-play actionlib-msgs rospy message-runtime ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Package enabling a robot to speak with a human voice by providing a Text-To-Speech ROS service'';
    license = with lib.licenses; [ asl20 ];
  };
}
