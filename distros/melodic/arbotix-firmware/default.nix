
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-melodic-arbotix-firmware";
  version = "0.10.0";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "vanadiumlabs";
        repo = "arbotix_ros-release";
        rev = "release/melodic/arbotix_firmware/0.10.0-0";
        sha256 = "sha256-hL6qjnmws9fWzuCeQM/SLHuBXmF9RdfDgl6JlKVq2/4=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Firmware source code for ArbotiX ROS bindings.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
