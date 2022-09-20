
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, pythonPackages }:
buildRosPackage {
  pname = "ros-melodic-rosmake";
  version = "1.14.9-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros-release/archive/release/melodic/rosmake/1.14.9-1.tar.gz";
    name = "1.14.9-1.tar.gz";
    sha256 = "a67c86505fa7edb380511dfb3e9021f6bbab44a11835af67117aa980af88e35a";
  };

  buildType = "catkin";
  buildInputs = [ pythonPackages.setuptools ];
  propagatedBuildInputs = [ catkin pythonPackages.rospkg ];
  nativeBuildInputs = [ catkin pythonPackages.setuptools ];

  meta = {
    description = ''rosmake is a ros dependency aware build tool which can be used to
     build all dependencies in the correct order.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
