
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cpp-common, genpy, roscpp-serialization, roscpp-traits, rostime }:
buildRosPackage {
  pname = "ros-noetic-message-runtime";
  version = "0.4.13-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "ros-gbp";
        repo = "message_runtime-release";
        rev = "release/noetic/message_runtime/0.4.13-1";
        sha256 = "sha256-jmepqaIACOIFGe4WQSG9um733v9hB6okBr4zfxcpQZI=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ cpp-common genpy roscpp-serialization roscpp-traits rostime ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Package modeling the run-time dependencies for language bindings of messages.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
