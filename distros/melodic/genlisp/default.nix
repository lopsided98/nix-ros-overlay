
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, genmsg }:
buildRosPackage {
  pname = "ros-melodic-genlisp";
  version = "0.4.16";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "ros-gbp";
        repo = "genlisp-release";
        rev = "release/melodic/genlisp/0.4.16-0";
        sha256 = "sha256-rgb3lhBFBIDQIg6NuajQYdKy7o3KNa+rMv5AFAL1zWI=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ genmsg ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Common-Lisp ROS message and service generators.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
