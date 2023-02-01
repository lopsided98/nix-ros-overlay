
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-leuze-msgs";
  version = "1.0.1-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "ipa-led";
        repo = "leuze_ros_drivers-release";
        rev = "release/melodic/leuze_msgs/1.0.1-1";
        sha256 = "sha256-gJH6sBzddlMbtkJJMtS3qpSHjpdYzpbTir6KkzKwBm0=";
      };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ message-runtime std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Contains the specific leuze messages.'';
    license = with lib.licenses; [ asl20 ];
  };
}
