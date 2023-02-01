
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rospy }:
buildRosPackage {
  pname = "ros-melodic-rotors-evaluation";
  version = "2.2.3";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "ethz-asl";
        repo = "rotors_simulator-release";
        rev = "release/melodic/rotors_evaluation/2.2.3-0";
        sha256 = "sha256-TEnPegVONoJ2/Sdfs/kF77vlGeIXiqDu2KR+gA4rbcg=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The dataset evaluation package for the RotorS simulator.'';
    license = with lib.licenses; [ "ASL-2.0" ];
  };
}
