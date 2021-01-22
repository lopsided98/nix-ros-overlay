
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, python3Packages }:
buildRosPackage {
  pname = "ros-noetic-rosmake";
  version = "1.15.7-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros-release/archive/release/noetic/rosmake/1.15.7-1.tar.gz";
    name = "1.15.7-1.tar.gz";
    sha256 = "ccf86e352c39bdf203c0465e1a154021e06d8f3b4face37269b1b01e3cba521e";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ catkin python3Packages.rospkg ];
  nativeBuildInputs = [ catkin python3Packages.setuptools ];

  meta = {
    description = ''rosmake is a ros dependency aware build tool which can be used to
     build all dependencies in the correct order.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
