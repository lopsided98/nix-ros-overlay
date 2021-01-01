
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, python3Packages }:
buildRosPackage {
  pname = "ros-noetic-rosclean";
  version = "1.15.7-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros-release/archive/release/noetic/rosclean/1.15.7-1.tar.gz";
    name = "1.15.7-1.tar.gz";
    sha256 = "07f10331747829275619412337672b65f1718fdf2c29fdb3239b29afa186ee2d";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ python3Packages.rospkg ];
  nativeBuildInputs = [ catkin python3Packages.setuptools ];

  meta = {
    description = ''rosclean: cleanup filesystem resources (e.g. log files).'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
