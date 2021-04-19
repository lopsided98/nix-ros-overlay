
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, genmsg, pythonPackages }:
buildRosPackage {
  pname = "ros-melodic-genpy";
  version = "0.6.15-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/genpy-release/archive/release/melodic/genpy/0.6.15-1.tar.gz";
    name = "0.6.15-1.tar.gz";
    sha256 = "4085c1c3c0798218f15ba925883c2e02faadce969e4179b30593e6f69a9aaacd";
  };

  buildType = "catkin";
  checkInputs = [ pythonPackages.numpy ];
  propagatedBuildInputs = [ genmsg pythonPackages.pyyaml ];
  nativeBuildInputs = [ catkin pythonPackages.setuptools ];

  meta = {
    description = ''Python ROS message and service generators.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
