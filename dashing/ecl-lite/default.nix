
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ecl-time-lite, ecl-io, ecl-sigslots-lite, ecl-errors, ament-cmake-ros, ecl-converters-lite, ecl-config }:
buildRosPackage {
  pname = "ros-dashing-ecl-lite";
  version = "1.0.3-r2";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/ecl_lite-release/archive/release/dashing/ecl_lite/1.0.3-2.tar.gz";
    name = "1.0.3-2.tar.gz";
    sha256 = "479b256228ce3b34501c40f972cab174313d446e07be5d4641e38ba6922dd914";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ ecl-time-lite ecl-io ecl-sigslots-lite ecl-errors ecl-converters-lite ecl-config ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''Libraries and utilities for embedded and low-level linux development.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
