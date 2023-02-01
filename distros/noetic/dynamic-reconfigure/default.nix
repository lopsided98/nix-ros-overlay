
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, cpp-common, message-generation, message-runtime, roscpp, roscpp-serialization, roslib, rospy, rosservice, rostest, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-dynamic-reconfigure";
  version = "1.7.3-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "ros-gbp";
        repo = "dynamic_reconfigure-release";
        rev = "release/noetic/dynamic_reconfigure/1.7.3-1";
        sha256 = "sha256-dSEvzNwGm4UZEPQSi167vFpb8CKnNDLVEF0K6417IFg=";
      };

  buildType = "catkin";
  buildInputs = [ catkin cpp-common message-generation roscpp-serialization rostest ];
  propagatedBuildInputs = [ boost message-runtime roscpp roslib rospy rosservice std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The dynamic_reconfigure package provides a means to update parameters
    at runtime without having to restart the node.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
