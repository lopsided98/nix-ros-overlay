
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, genmsg, python3Packages }:
buildRosPackage {
  pname = "ros-noetic-genpy";
  version = "0.6.12-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/genpy-release/archive/release/noetic/genpy/0.6.12-1.tar.gz";
    name = "0.6.12-1.tar.gz";
    sha256 = "a7b6d5508b33b37a27e6e6ffa770b6835f3a51cb964dddba11b6da487c3df7d7";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ genmsg python3Packages.pyyaml ];
  nativeBuildInputs = [ catkin python3Packages.setuptools ];

  meta = {
    description = ''Python ROS message and service generators.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
