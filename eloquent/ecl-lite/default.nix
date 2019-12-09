
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, ecl-converters-lite, ecl-sigslots-lite, ecl-errors, ecl-time-lite, ecl-config, ecl-io }:
buildRosPackage {
  pname = "ros-eloquent-ecl-lite";
  version = "1.0.3-r1";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/ecl_lite-release/archive/release/eloquent/ecl_lite/1.0.3-1.tar.gz";
    name = "1.0.3-1.tar.gz";
    sha256 = "0a3dc539837274a7b0806f314da04cf8750c73b31728b917ee0fb489ecae740e";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ ecl-converters-lite ecl-sigslots-lite ecl-errors ecl-time-lite ecl-config ecl-io ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''Libraries and utilities for embedded and low-level linux development.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
