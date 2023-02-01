
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-autoware-config-msgs";
  version = "1.14.0-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "autoware-ai";
        repo = "messages-release";
        rev = "release/melodic/autoware_config_msgs/1.14.0-1";
        sha256 = "sha256-LnjiFHp8RAOybuiYvaB7dQNLh6hWlsNqj5EXRHZEcHk=";
      };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ message-runtime std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The autoware_config_msgs package'';
    license = with lib.licenses; [ asl20 ];
  };
}
