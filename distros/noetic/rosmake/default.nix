
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, pythonPackages }:
buildRosPackage {
  pname = "ros-noetic-rosmake";
  version = "1.15.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros-release/archive/release/noetic/rosmake/1.15.1-1.tar.gz";
    name = "1.15.1-1.tar.gz";
    sha256 = "3b5a9f7bb22b17436bd67b56ce5a8c16d8f4836c41c7615bfa1f2750ef006bed";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ catkin pythonPackages.rospkg ];
  nativeBuildInputs = [ catkin pythonPackages.setuptools ];

  meta = {
    description = ''rosmake is a ros dependency aware build tool which can be used to
     build all dependencies in the correct order.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
