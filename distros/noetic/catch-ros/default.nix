
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, roscpp }:
buildRosPackage {
  pname = "ros-noetic-catch-ros";
  version = "0.5.0-r2";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "AIS-Bonn";
        repo = "catch_ros-release";
        rev = "release/noetic/catch_ros/0.5.0-2";
        sha256 = "sha256-xpObhUYqMm+iVvSJgkHdqkm94zq3JVB0kYn0Ud9ioiA=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS integration for the Catch unit test framework'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
