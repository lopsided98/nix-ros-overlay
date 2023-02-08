
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, actionlib-msgs, catkin, message-generation, message-runtime, roscpp, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-actionlib-tutorials";
  version = "0.2.0-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "ros-gbp";
        repo = "common_tutorials-release";
        rev = "release/noetic/actionlib_tutorials/0.2.0-1";
        sha256 = "sha256-N81Xjwkt1F73f+gKOZaCa28KE065Q9kFZM7AdY/597A=";
      };

  buildType = "catkin";
  buildInputs = [ actionlib-msgs catkin message-generation std-msgs ];
  propagatedBuildInputs = [ actionlib message-runtime roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The actionlib_tutorials package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
