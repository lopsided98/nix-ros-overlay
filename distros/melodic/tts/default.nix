
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib-msgs, catkin, message-generation, message-runtime, pythonPackages, rospy, rostest, rosunit, sound-play, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-tts";
  version = "1.0.2-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "aws-gbp";
        repo = "tts-release";
        rev = "release/melodic/tts/1.0.2-1";
        sha256 = "sha256-oQY/oPRXNEc+n26XiKt9skrskbBFj6kpQrtsm1M6Q/Q=";
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
