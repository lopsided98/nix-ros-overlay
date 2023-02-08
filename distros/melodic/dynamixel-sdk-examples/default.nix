
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, dynamixel-sdk, message-generation, message-runtime, roscpp, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-dynamixel-sdk-examples";
  version = "3.7.51-r4";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "ROBOTIS-GIT-release";
        repo = "DynamixelSDK-release";
        rev = "release/melodic/dynamixel_sdk_examples/3.7.51-4";
        sha256 = "sha256-Qo9VFpdJf9QyrQ5wFCLCVNtszTR25Pnda+6EAe3Mo9Y=";
      };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ dynamixel-sdk message-runtime roscpp std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The DYNAMIXEL SDK ROS example package'';
    license = with lib.licenses; [ asl20 ];
  };
}
