
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, genmsg, pythonPackages }:
buildRosPackage {
  pname = "ros-melodic-gencpp";
  version = "0.6.6-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/gencpp-release/archive/release/melodic/gencpp/0.6.6-1.tar.gz";
    name = "0.6.6-1.tar.gz";
    sha256 = "f90054067bf428d2d09add230148de8696facdd704b3a0b2832690e8db760f75";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ genmsg ];
  nativeBuildInputs = [ catkin pythonPackages.setuptools ];

  meta = {
    description = ''C++ ROS message and service generators.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
