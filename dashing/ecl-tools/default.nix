
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ecl-license, ecl-build, ament-cmake }:
buildRosPackage {
  pname = "ros-dashing-ecl-tools";
  version = "1.0.2-r1";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/ecl_tools-release/archive/release/dashing/ecl_tools/1.0.2-1.tar.gz";
    name = "1.0.2-1.tar.gz";
    sha256 = "499cf586bc6ee2e9d053c28585994cf55f95d0044319bf7a62ea0e7e93bb5d77";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ ecl-license ecl-build ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Tools and utilities for ecl development.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
