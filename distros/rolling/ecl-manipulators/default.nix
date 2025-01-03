
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gtest, ament-cmake-ros, ament-lint-auto, ament-lint-common, ecl-build, ecl-exceptions, ecl-formatters, ecl-geometry, ecl-license }:
buildRosPackage {
  pname = "ros-rolling-ecl-manipulators";
  version = "1.2.1-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ecl_core-release/archive/release/rolling/ecl_manipulators/1.2.1-4.tar.gz";
    name = "1.2.1-4.tar.gz";
    sha256 = "c213e17ada887326a830e18903dc63e1716131390d8d31db2307aecff117f316";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ecl-build ecl-exceptions ecl-formatters ecl-geometry ecl-license ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = "Deploys various manipulation algorithms, currently just
    feedforward filters (interpolations).";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
