
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib-msgs, catkin, copernicus-msgs, geometry-msgs, roscpp, sensor-msgs, teleop-twist-joy, teleop-twist-keyboard }:
buildRosPackage {
  pname = "ros-melodic-copernicus-teleoperator";
  version = "1.1.0-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "botsync-gbp";
        repo = "copernicus-release";
        rev = "release/melodic/copernicus_teleoperator/1.1.0-1";
        sha256 = "sha256-/EMo62mvz1ILZEeDf96kzGN15zy46o9Kb/HyfbAWz9A=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ actionlib-msgs copernicus-msgs geometry-msgs roscpp sensor-msgs teleop-twist-joy teleop-twist-keyboard ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The copernicus_teleoperator package'';
    license = with lib.licenses; [ bsd3 ];
  };
}
