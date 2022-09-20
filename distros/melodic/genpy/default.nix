
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, genmsg, pythonPackages }:
buildRosPackage {
  pname = "ros-melodic-genpy";
  version = "0.6.16-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/genpy-release/archive/release/melodic/genpy/0.6.16-1.tar.gz";
    name = "0.6.16-1.tar.gz";
    sha256 = "1b1e9c10f9bc7976395bc7d966d6ec895f1a5d5d4c161a11c3f38c8a2e614f7d";
  };

  buildType = "catkin";
  buildInputs = [ catkin pythonPackages.setuptools ];
  checkInputs = [ pythonPackages.numpy ];
  propagatedBuildInputs = [ genmsg pythonPackages.pyyaml ];
  nativeBuildInputs = [ catkin pythonPackages.setuptools ];

  meta = {
    description = ''Python ROS message and service generators.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
