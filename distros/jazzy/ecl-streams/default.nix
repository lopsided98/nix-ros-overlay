
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gtest, ament-cmake-ros, ament-lint-auto, ament-lint-common, ecl-build, ecl-concepts, ecl-converters, ecl-devices, ecl-errors, ecl-license, ecl-time, ecl-type-traits }:
buildRosPackage {
  pname = "ros-jazzy-ecl-streams";
  version = "1.2.1-r5";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ecl_core-release/archive/release/jazzy/ecl_streams/1.2.1-5.tar.gz";
    name = "1.2.1-5.tar.gz";
    sha256 = "798d7632e8a28817143f64d3143f3bcb1917cc84b0d88ec43b51d515a61143fc";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros ecl-build ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ecl-concepts ecl-converters ecl-devices ecl-errors ecl-license ecl-time ecl-type-traits ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = "These are lightweight text streaming classes that connect to standardised
     ecl type devices.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
