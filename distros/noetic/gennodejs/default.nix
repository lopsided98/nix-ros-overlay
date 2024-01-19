
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, genmsg, python3Packages }:
buildRosPackage {
  pname = "ros-noetic-gennodejs";
  version = "2.0.2-r1";

  src = fetchurl {
    url = "https://github.com/sloretz/gennodejs-release/archive/release/noetic/gennodejs/2.0.2-1.tar.gz";
    name = "2.0.2-1.tar.gz";
    sha256 = "a4f42f9e0ea4aa5390032c98a0702ed33d62069ade18ee942002524b2a22e77d";
  };

  buildType = "catkin";
  buildInputs = [ catkin python3Packages.setuptools ];
  propagatedBuildInputs = [ genmsg ];
  nativeBuildInputs = [ catkin python3Packages.setuptools ];

  meta = {
    description = ''Javascript ROS message and service generators.'';
    license = with lib.licenses; [ asl20 ];
  };
}
