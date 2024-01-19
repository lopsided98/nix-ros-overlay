
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gtest, ament-cmake-ros, ament-lint-auto, ament-lint-common, ecl-build, ecl-concepts, ecl-converters, ecl-devices, ecl-errors, ecl-license, ecl-time, ecl-type-traits }:
buildRosPackage {
  pname = "ros-rolling-ecl-streams";
  version = "1.2.1-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ecl_core-release/archive/release/rolling/ecl_streams/1.2.1-3.tar.gz";
    name = "1.2.1-3.tar.gz";
    sha256 = "fde0ad8a4f1dca0a345bd34662e145b55996dbca69b23a269cc39e8cf6ef9161";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros ecl-build ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ecl-concepts ecl-converters ecl-devices ecl-errors ecl-license ecl-time ecl-type-traits ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''These are lightweight text streaming classes that connect to standardised
     ecl type devices.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
