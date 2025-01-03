
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, ecl-build, ecl-config, ecl-license }:
buildRosPackage {
  pname = "ros-jazzy-ecl-errors";
  version = "1.2.0-r5";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ecl_lite-release/archive/release/jazzy/ecl_errors/1.2.0-5.tar.gz";
    name = "1.2.0-5.tar.gz";
    sha256 = "49d5d28169dbc0c0e25c4fa711627135c3898023c1ea9e118f3a67c1a377785f";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros ecl-build ];
  propagatedBuildInputs = [ ecl-config ecl-license ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = "This library provides lean and mean error mechanisms.
    It includes c style error functions as well as a few
    useful macros. For higher level mechanisms,
    refer to ecl_exceptions.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
