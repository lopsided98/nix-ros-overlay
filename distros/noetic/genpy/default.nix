
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, genmsg, python3Packages }:
buildRosPackage {
  pname = "ros-noetic-genpy";
  version = "0.6.18-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/genpy-release/archive/release/noetic/genpy/0.6.18-1.tar.gz";
    name = "0.6.18-1.tar.gz";
    sha256 = "ee1fd0962cdf96614f5523091e44c0818a297579340c13afadbd7debb6757fb8";
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
