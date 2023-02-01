
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-clober-msgs";
  version = "1.0.1-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "CLOBOT-Co-Ltd-release";
        repo = "clober_msgs-release";
        rev = "release/noetic/clober_msgs/1.0.1-1";
        sha256 = "sha256-6Ezg+uD3chy/MysednpP5PKOvzUD2/ddXijOaxerKSo=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ message-generation message-runtime std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The messages for Clober'';
    license = with lib.licenses; [ asl20 ];
  };
}
