
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, roscpp, roslib, rospy, rostest, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-rostate-machine";
  version = "0.0.2-r3";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "OUXT-Polaris";
        repo = "rostate_machine-release";
        rev = "release/melodic/rostate_machine/0.0.2-3";
        sha256 = "sha256-KN9F+u0MnkKKZreZNT7KaFkTrDi8f3NhLbmd5wMVrd4=";
      };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ message-runtime roscpp roslib rospy rostest std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The rostate_machine package'';
    license = with lib.licenses; [ asl20 ];
  };
}
