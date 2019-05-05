
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ecl-license, catkin, ecl-build }:
buildRosPackage {
  pname = "ros-melodic-ecl-tools";
  version = "0.61.7";

  src = fetchurl {
    url = https://github.com/yujinrobot-release/ecl_tools-release/archive/release/melodic/ecl_tools/0.61.7-0.tar.gz;
    sha256 = "fb2e777278b4eb2dfbbcb47117e69e6ee417375041ff731d7ffca1ab1c5c6c43";
  };

  propagatedBuildInputs = [ ecl-license ecl-build ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Tools and utilities for ecl development.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
