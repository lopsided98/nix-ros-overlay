
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ecl-build, ecl-license }:
buildRosPackage {
  pname = "ros-iron-ecl-tools";
  version = "1.0.3-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ecl_tools-release/archive/release/iron/ecl_tools/1.0.3-4.tar.gz";
    name = "1.0.3-4.tar.gz";
    sha256 = "cda50ab923a00280adf6a7f2e610285492c143f21869e761684f89adfbac2864";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ ecl-build ecl-license ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Tools and utilities for ecl development.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
