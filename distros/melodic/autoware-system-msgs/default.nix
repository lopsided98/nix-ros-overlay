
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, rosgraph-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-autoware-system-msgs";
  version = "1.14.0-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "autoware-ai";
        repo = "messages-release";
        rev = "release/melodic/autoware_system_msgs/1.14.0-1";
        sha256 = "sha256-SIEfTLBAP2uML4EY0BlOP14wFdi7FHjb29c79rzNEkU=";
      };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ message-runtime rosgraph-msgs std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The autoware_system_msgs package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
