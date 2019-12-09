
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, genmsg, pythonPackages, catkin }:
buildRosPackage {
  pname = "ros-kinetic-genpy";
  version = "0.6.7";

  src = fetchurl {
    url = "https://github.com/ros-gbp/genpy-release/archive/release/kinetic/genpy/0.6.7-0.tar.gz";
    name = "0.6.7-0.tar.gz";
    sha256 = "6da14e4bd43b284e08490dba88f78af807d21f7b3e1aa06e4691e5124f2f77ec";
  };

  buildType = "catkin";
  buildInputs = [ genmsg ];
  propagatedBuildInputs = [ genmsg pythonPackages.pyyaml ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Python ROS message and service generators.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
