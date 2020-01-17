
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, ecl-build, ecl-config, ecl-license }:
buildRosPackage {
  pname = "ros-eloquent-ecl-errors";
  version = "1.0.5-r1";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/ecl_lite-release/archive/release/eloquent/ecl_errors/1.0.5-1.tar.gz";
    name = "1.0.5-1.tar.gz";
    sha256 = "e65cbb05540a0ffa2fb8a34223c86693a6a13e23d6b1a2333af2d19e1084894b";
  };

  buildType = "ament_cmake";
  buildInputs = [ ecl-build ];
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
