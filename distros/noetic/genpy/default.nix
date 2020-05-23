
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, genmsg, pythonPackages }:
buildRosPackage {
  pname = "ros-noetic-genpy";
  version = "0.6.11-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/genpy-release/archive/release/noetic/genpy/0.6.11-1.tar.gz";
    name = "0.6.11-1.tar.gz";
    sha256 = "1b4fb32adf1a2a62a0320ee282a88f51bc1e7a8cf9b89372b7fa9c52f013b88a";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ genmsg pythonPackages.pyyaml ];
  nativeBuildInputs = [ catkin pythonPackages.setuptools ];

  meta = {
    description = ''Python ROS message and service generators.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
