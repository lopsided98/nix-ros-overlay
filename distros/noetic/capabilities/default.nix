
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, bondpy, catkin, geometry-msgs, message-generation, message-runtime, nodelet, python3Packages, roslaunch, rospy, rosservice, rostest, std-msgs, std-srvs }:
buildRosPackage {
  pname = "ros-noetic-capabilities";
  version = "0.3.1-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "ros-gbp";
        repo = "capabilities-release";
        rev = "release/noetic/capabilities/0.3.1-1";
        sha256 = "sha256-oZaBTlkl2LxXaaHDGuQkAWZwJERUJ3RHLLMwgcnzgRs=";
      };

  buildType = "catkin";
  buildInputs = [ catkin message-generation rostest ];
  checkInputs = [ geometry-msgs python3Packages.coverage python3Packages.mock python3Packages.pep8 rosservice ];
  propagatedBuildInputs = [ bondpy message-runtime nodelet python3Packages.pyyaml roslaunch rospy std-msgs std-srvs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Package which implements capabilities, including code to parse capability interface specs, to parse capability provider specs, and implement the capability server.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
