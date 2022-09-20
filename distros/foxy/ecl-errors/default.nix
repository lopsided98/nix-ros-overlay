
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, ecl-build, ecl-config, ecl-license }:
buildRosPackage {
  pname = "ros-foxy-ecl-errors";
  version = "1.1.0-r1";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/ecl_lite-release/archive/release/foxy/ecl_errors/1.1.0-1.tar.gz";
    name = "1.1.0-1.tar.gz";
    sha256 = "92f939390679eb59a1e2a3d5829742847d03487081a7cc53b1e6c5399d8413c2";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros ecl-build ];
  propagatedBuildInputs = [ ecl-config ecl-license ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''This library provides lean and mean error mechanisms.
    It includes c style error functions as well as a few
    useful macros. For higher level mechanisms,
    refer to ecl_exceptions.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
