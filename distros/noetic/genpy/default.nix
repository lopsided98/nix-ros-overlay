
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, genmsg, python3Packages }:
buildRosPackage {
  pname = "ros-noetic-genpy";
  version = "0.6.17-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/genpy-release/archive/release/noetic/genpy/0.6.17-1.tar.gz";
    name = "0.6.17-1.tar.gz";
    sha256 = "8ec57c55393f20da7f7fb079a9b6572777fa80fa378a679822dab4b12d628c13";
  };

  buildType = "catkin";
  buildInputs = [ catkin python3Packages.setuptools ];
  checkInputs = [ python3Packages.numpy ];
  propagatedBuildInputs = [ genmsg python3Packages.pyyaml ];
  nativeBuildInputs = [ catkin python3Packages.setuptools ];

  meta = {
    description = "Python ROS message and service generators.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
