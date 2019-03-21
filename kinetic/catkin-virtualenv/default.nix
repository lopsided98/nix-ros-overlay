
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, pythonPackages, roslint, python3 }:
buildRosPackage {
  pname = "ros-kinetic-catkin-virtualenv";
  version = "0.2.0";

  src = fetchurl {
    url = https://github.com/locusrobotics/catkin_virtualenv-release/archive/release/kinetic/catkin_virtualenv/0.2.0-0.tar.gz;
    sha256 = "7efeef39c545404b52f716331736e42b8d4bf418eb2c3c6939e786ddfb344364";
  };

  checkInputs = [ roslint ];
  propagatedBuildInputs = [ pythonPackages.virtualenv pythonPackages.enum34 python3 ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Bundle python requirements in a catkin package via virtualenv.'';
    #license = lib.licenses.GPL;
  };
}
