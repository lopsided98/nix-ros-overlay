
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gtest, ament-cmake-ros, ament-lint-auto, ament-lint-common, ecl-build, ecl-errors, ecl-formatters, ecl-geometry, ecl-license, ecl-linear-algebra, ecl-math }:
buildRosPackage {
  pname = "ros-jazzy-ecl-mobile-robot";
  version = "1.2.1-r5";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ecl_core-release/archive/release/jazzy/ecl_mobile_robot/1.2.1-5.tar.gz";
    name = "1.2.1-5.tar.gz";
    sha256 = "90f3e7b8c6b033a96346dd413712e957a758ac24e702d03ab62adb073956068a";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ecl-build ecl-errors ecl-formatters ecl-geometry ecl-license ecl-linear-algebra ecl-math ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = "Contains transforms (e.g. differential drive inverse kinematics)
    for the various types of mobile robot platforms.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
