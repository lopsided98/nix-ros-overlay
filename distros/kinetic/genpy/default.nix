
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, genmsg, pythonPackages }:
buildRosPackage {
  pname = "ros-kinetic-genpy";
  version = "0.6.14-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/genpy-release/archive/release/kinetic/genpy/0.6.14-1.tar.gz";
    name = "0.6.14-1.tar.gz";
    sha256 = "bec9eda88be0295d62db2d846af960fae57dac5a6b384c0f5e4011a97181e448";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ genmsg pythonPackages.pyyaml ];
  nativeBuildInputs = [ catkin pythonPackages.setuptools ];

  meta = {
    description = ''Python ROS message and service generators.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
