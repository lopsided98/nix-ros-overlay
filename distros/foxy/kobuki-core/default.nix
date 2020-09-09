
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, ecl-build, ecl-command-line, ecl-config, ecl-converters, ecl-devices, ecl-geometry, ecl-mobile-robot, ecl-sigslots, ecl-threads, ecl-time }:
buildRosPackage {
  pname = "ros-foxy-kobuki-core";
  version = "1.2.0-r1";

  src = fetchurl {
    url = "https://github.com/stonier/kobuki_core-release/archive/release/foxy/kobuki_core/1.2.0-1.tar.gz";
    name = "1.2.0-1.tar.gz";
    sha256 = "be1970b6c85af9c98bd7acd8a11edd19a2f463c0b6d26f66a5cd461333cfa8b5";
  };

  buildType = "ament_cmake";
  buildInputs = [ ecl-build ];
  propagatedBuildInputs = [ ecl-command-line ecl-config ecl-converters ecl-devices ecl-geometry ecl-mobile-robot ecl-sigslots ecl-threads ecl-time ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''Pure C++ driver library for Kobuki.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
