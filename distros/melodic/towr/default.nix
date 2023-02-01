
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake, eigen, ifopt }:
buildRosPackage {
  pname = "ros-melodic-towr";
  version = "1.4.1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "ethz-adrl";
        repo = "towr-release";
        rev = "release/melodic/towr/1.4.1-0";
        sha256 = "sha256-35o/tjNwKi7irLCOFb6opc1XwRdVILWDcXE8lmr9ED8=";
      };

  buildType = "cmake";
  buildInputs = [ cmake ];
  propagatedBuildInputs = [ catkin eigen ifopt ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''A light-weight, Eigen-based
    C++ library for trajectory optimization for legged robots. 
    This library provides implementations for variables, costs and constraints
    that can be used to represent a legged locomotion problem. 
    The resulting Nonlinear Programming Problem (NLP) can then be solved with
    off-the-shelf solvers, e.g. Ipopt using the generic optimizer interface 
    <a href="http://wiki.ros.org/ifopt">ifopt</a>.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
