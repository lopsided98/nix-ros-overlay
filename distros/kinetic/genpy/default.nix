
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, genmsg, pythonPackages }:
buildRosPackage {
  pname = "ros-kinetic-genpy";
  version = "0.6.15-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/genpy-release/archive/release/kinetic/genpy/0.6.15-1.tar.gz";
    name = "0.6.15-1.tar.gz";
    sha256 = "79dd12c91d49d7b9aceeded88935965a91ef59db2ecc589b17bcee4d1090b598";
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
