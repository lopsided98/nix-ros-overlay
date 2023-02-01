
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, rospy }:
buildRosPackage {
  pname = "ros-melodic-key-teleop";
  version = "0.3.1-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "ros-gbp";
        repo = "teleop_tools-release";
        rev = "release/melodic/key_teleop/0.3.1-1";
        sha256 = "sha256-Z9kVAHBq7uPY/EesKRBy+XbaYfSRtf5GIJP2D14Z5KM=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ geometry-msgs rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A text-based interface to send a robot movement commands'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
