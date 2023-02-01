
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cob-canopen-motor, cob-generic-can, cob-utilities, control-msgs, diagnostic-msgs, message-generation, message-runtime, roscpp, sensor-msgs, std-msgs, std-srvs }:
buildRosPackage {
  pname = "ros-melodic-cob-base-drive-chain";
  version = "0.7.4-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "ipa320";
        repo = "cob_driver-release";
        rev = "release/melodic/cob_base_drive_chain/0.7.4-1";
        sha256 = "sha256-GFgik5G1Uq3rlopiOZZQpbYlKwTAXgurA/u96ZmiGCc=";
      };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ cob-canopen-motor cob-generic-can cob-utilities control-msgs diagnostic-msgs message-runtime roscpp sensor-msgs std-msgs std-srvs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains classes that are able to control the platform of the Care-O-Bot. This means to establish a CAN communication to drive and steering motors of the platform and later send motion commands and receive motor information.'';
    license = with lib.licenses; [ asl20 ];
  };
}
