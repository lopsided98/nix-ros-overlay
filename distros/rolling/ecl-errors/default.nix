
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, ecl-build, ecl-config, ecl-license }:
buildRosPackage {
  pname = "ros-rolling-ecl-errors";
  version = "1.2.0-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ecl_lite-release/archive/release/rolling/ecl_errors/1.2.0-4.tar.gz";
    name = "1.2.0-4.tar.gz";
    sha256 = "3107ea0d2a68bbcdddecc2550ddf58863ab184ae59f1c69e96d4adfe4611c7e3";
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
