
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gtest, ament-cmake-ros, ament-lint-auto, ament-lint-common, ecl-build, ecl-errors, ecl-formatters, ecl-geometry, ecl-license, ecl-linear-algebra, ecl-math }:
buildRosPackage {
  pname = "ros-rolling-ecl-mobile-robot";
  version = "1.2.1-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ecl_core-release/archive/release/rolling/ecl_mobile_robot/1.2.1-4.tar.gz";
    name = "1.2.1-4.tar.gz";
    sha256 = "d835aa71ebe81e18fc24336af87c76a9a45a4e3e407cd56c96c56f95cf5089b2";
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
