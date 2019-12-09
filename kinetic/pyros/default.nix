
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, pythonPackages, pyros-interfaces-ros, catkin-pip, pyros-common }:
buildRosPackage {
  pname = "ros-kinetic-pyros";
  version = "0.4.3-r1";

  src = fetchurl {
    url = "https://github.com/asmodehn/pyros-rosrelease/archive/release/kinetic/pyros/0.4.3-1.tar.gz";
    name = "0.4.3-1.tar.gz";
    sha256 = "40ecf4689465aaac2e02fedc910a8ee83e3bfc137de54c9532649099d441ed82";
  };

  buildType = "catkin";
  buildInputs = [ pythonPackages.mock catkin-pip pyros-common pyros-interfaces-ros ];
  propagatedBuildInputs = [ pythonPackages.mock pyros-common pyros-interfaces-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Provides Python to ROS multiprocess API, useful for using ROS from different multiprocess environment while keeping both isolated.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
