
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ecl-license, ecl-build, ament-cmake }:
buildRosPackage {
  pname = "ros-crystal-ecl-tools";
  version = "1.0.1-r1";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/ecl_tools-release/archive/release/crystal/ecl_tools/1.0.1-1.tar.gz";
    name = "1.0.1-1.tar.gz";
    sha256 = "899c4f6f93e12acdb6d81631ac8fdf56c45a54f565e68a4ce6a05030e4ddbbbd";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ ecl-license ecl-build ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Tools and utilities for ecl development.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
