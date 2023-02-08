
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake, cppunit, ros }:
buildRosPackage {
  pname = "ros-melodic-bfl";
  version = "0.8.0-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "ros-gbp";
        repo = "bfl-release";
        rev = "release/melodic/bfl/0.8.0-1";
        sha256 = "sha256-5Cit/FQaF/R9jb/T9HxA6IF+3xzRcJFZolEotoE7+uY=";
      };

  buildType = "cmake";
  buildInputs = [ cmake ];
  propagatedBuildInputs = [ catkin cppunit ros ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''This package contains a recent version of the Bayesian Filtering
  Library (BFL), distributed by the Orocos Project.  For stability
  reasons, this package is currently locked to revision 31655 (April
  19, 2010), but this revision will be updated on a regular basis to
  the latest available BFL trunk.  This ROS package does not modify
  BFL in any way, it simply provides a convenient way to download and
  compile the library, because BFL is not available from an OS package
  manager.  This ROS package compiles BFL with the Boost library for
  matrix operations and random number generation.'';
    license = with lib.licenses; [ "LGPL" ];
  };
}
