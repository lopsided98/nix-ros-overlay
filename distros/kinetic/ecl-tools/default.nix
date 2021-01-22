
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, ecl-build, ecl-license }:
buildRosPackage {
  pname = "ros-kinetic-ecl-tools";
  version = "0.61.6";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/ecl_tools-release/archive/release/kinetic/ecl_tools/0.61.6-0.tar.gz";
    name = "0.61.6-0.tar.gz";
    sha256 = "b89d637a62989fbbf629a285d88fe4b4aee9d984a8a948343fb8968a929f47f2";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ ecl-build ecl-license ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Tools and utilities for ecl development.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
