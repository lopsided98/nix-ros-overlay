
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ecl-license, catkin, ecl-build }:
buildRosPackage {
  pname = "ros-lunar-ecl-tools";
  version = "0.61.7";

  src = fetchurl {
    url = https://github.com/yujinrobot-release/ecl_tools-release/archive/release/lunar/ecl_tools/0.61.7-0.tar.gz;
    sha256 = "c9ccb0127acf14017df267ebfbf14bee81946a0f56d60238281f07210afe2eae";
  };

  propagatedBuildInputs = [ ecl-license ecl-build ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Tools and utilities for ecl development.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
