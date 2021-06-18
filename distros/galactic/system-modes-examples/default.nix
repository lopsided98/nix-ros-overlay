
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-cppcheck, ament-cmake-cpplint, ament-cmake-flake8, ament-cmake-gmock, ament-cmake-gtest, ament-cmake-pep257, ament-cmake-uncrustify, ament-lint-auto, launch, launch-system-modes, rclcpp, rclcpp-lifecycle, ros2launch, system-modes, system-modes-msgs }:
buildRosPackage {
  pname = "ros-galactic-system-modes-examples";
  version = "0.8.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/system_modes-release/archive/release/galactic/system_modes_examples/0.8.0-1.tar.gz";
    name = "0.8.0-1.tar.gz";
    sha256 = "ada88f621f2ae43f067d76a68f0250f98458f879c035589136defc701536a119";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-cppcheck ament-cmake-cpplint ament-cmake-flake8 ament-cmake-gmock ament-cmake-gtest ament-cmake-pep257 ament-cmake-uncrustify ament-lint-auto ];
  propagatedBuildInputs = [ launch launch-system-modes rclcpp rclcpp-lifecycle ros2launch system-modes system-modes-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Example systems and according launch files for the system_modes
    package.'';
    license = with lib.licenses; [ asl20 ];
  };
}
