
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, catkin, libyamlcpp, play-motion-builder-msgs, play-motion-msgs, roscpp, rostest, sensor-msgs }:
buildRosPackage {
  pname = "ros-melodic-play-motion-builder";
  version = "1.0.2-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "pal-robotics";
        repo = "play_motion_builder-release";
        rev = "release/melodic/play_motion_builder/1.0.2-1";
        sha256 = "sha256-FpAofk8ckVRXAG4mwSKzoVT0C01xxmKxCRPWNA1k8r0=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ rostest ];
  propagatedBuildInputs = [ actionlib libyamlcpp play-motion-builder-msgs play-motion-msgs roscpp sensor-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The play_motion_builder package, a node to handle the creation of new motions for play_motion.'';
    license = with lib.licenses; [ "LGPL-3.0" ];
  };
}
