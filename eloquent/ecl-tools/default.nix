
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ecl-license, ecl-build, ament-cmake }:
buildRosPackage {
  pname = "ros-eloquent-ecl-tools";
  version = "1.0.2-r1";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/ecl_tools-release/archive/release/eloquent/ecl_tools/1.0.2-1.tar.gz";
    name = "1.0.2-1.tar.gz";
    sha256 = "92113e531745718759df4bc920ca6af980ab19c642d07a28e034f49b9c8c8d5d";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ ecl-license ecl-build ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Tools and utilities for ecl development.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
