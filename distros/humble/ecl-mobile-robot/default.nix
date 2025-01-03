
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gtest, ament-cmake-ros, ament-lint-auto, ament-lint-common, ecl-build, ecl-errors, ecl-formatters, ecl-geometry, ecl-license, ecl-linear-algebra, ecl-math }:
buildRosPackage {
  pname = "ros-humble-ecl-mobile-robot";
  version = "1.2.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ecl_core-release/archive/release/humble/ecl_mobile_robot/1.2.1-1.tar.gz";
    name = "1.2.1-1.tar.gz";
    sha256 = "6bc4728a56703ee07ecd522a56f9a2a70716eda6138c9702ce2a9e4067008090";
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
