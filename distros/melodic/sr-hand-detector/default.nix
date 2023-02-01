
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, libyamlcpp, roscpp, roslib, rostest }:
buildRosPackage {
  pname = "ros-melodic-sr-hand-detector";
  version = "0.0.3-r2";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "shadow-robot";
        repo = "sr_hand_detector-release";
        rev = "release/melodic/sr_hand_detector/0.0.3-2";
        sha256 = "sha256-MseTsSlRiRX4vL7s59AtkbPsC+GCGxYc96o+K7nZWCA=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ rostest ];
  propagatedBuildInputs = [ libyamlcpp roscpp roslib ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The sr_hand_detector package'';
    license = with lib.licenses; [ "GPL" ];
  };
}
