
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, rospy }:
buildRosPackage {
  pname = "ros-noetic-monkeywrench";
  version = "0.1.0-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "cst0";
        repo = "ros-monkeywrench-release";
        rev = "release/noetic/monkeywrench/0.1.0-1";
        sha256 = "sha256-LoYnBgHNEcfa0ANgYX7cxHeZWvQxe4SQW3BzkE+M5VE=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ message-generation rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''throw a monkeywrench in your robot code'';
    license = with lib.licenses; [ asl20 ];
  };
}
