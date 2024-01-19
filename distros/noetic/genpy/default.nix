
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, genmsg, python3Packages }:
buildRosPackage {
  pname = "ros-noetic-genpy";
  version = "0.6.15-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/genpy-release/archive/release/noetic/genpy/0.6.15-1.tar.gz";
    name = "0.6.15-1.tar.gz";
    sha256 = "6ff427b4dba67d28eb6c39e3c43c3ab5a011e9fc0d3b5c4c39828476f5ea2746";
  };

  buildType = "catkin";
  buildInputs = [ catkin python3Packages.setuptools ];
  checkInputs = [ python3Packages.numpy ];
  propagatedBuildInputs = [ genmsg python3Packages.pyyaml ];
  nativeBuildInputs = [ catkin python3Packages.setuptools ];

  meta = {
    description = ''Python ROS message and service generators.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
