
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, roscpp, rospy, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-oled-display-node";
  version = "1.0.0-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "UbiquityRobotics-release";
        repo = "oled_display_node-release";
        rev = "release/noetic/oled_display_node/1.0.0-1";
        sha256 = "sha256-n3Ie1ny0PQKwqweV1Sfcdki7pCUeu5FIBtR823kIdvI=";
      };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ message-runtime roscpp rospy std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''OLED I2C display node package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
