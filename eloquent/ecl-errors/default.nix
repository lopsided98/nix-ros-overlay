
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ecl-license, ecl-config, ecl-build, ament-cmake-ros }:
buildRosPackage {
  pname = "ros-eloquent-ecl-errors";
  version = "1.0.3-r1";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/ecl_lite-release/archive/release/eloquent/ecl_errors/1.0.3-1.tar.gz";
    name = "1.0.3-1.tar.gz";
    sha256 = "2662b247da5a8a8114fd46f0363d0f88ee44df7786c3d5a2bbe5caab906ab936";
  };

  buildType = "ament_cmake";
  buildInputs = [ ecl-license ecl-config ecl-build ];
  propagatedBuildInputs = [ ecl-license ecl-config ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''This library provides lean and mean error mechanisms.
    It includes c style error functions as well as a few
    useful macros. For higher level mechanisms,
    refer to ecl_exceptions.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
