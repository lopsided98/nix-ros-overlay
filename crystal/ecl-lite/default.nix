
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ecl-time-lite, ecl-io, ecl-sigslots-lite, ecl-errors, ament-cmake-ros, ecl-converters-lite, ecl-config }:
buildRosPackage {
  pname = "ros-crystal-ecl-lite";
  version = "1.0.1";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/ecl_lite-release/archive/release/crystal/ecl_lite/1.0.1-0.tar.gz";
    name = "1.0.1-0.tar.gz";
    sha256 = "da24938f4d3fabe34a7d9e936cb274beb26f8070113c92fd3b3da54b7a127f75";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ ecl-time-lite ecl-io ecl-sigslots-lite ecl-errors ecl-converters-lite ecl-config ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''Libraries and utilities for embedded and low-level linux development.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
