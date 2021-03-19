
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-cppcheck, ament-cmake-cpplint, ament-cmake-flake8, ament-cmake-gmock, ament-cmake-gtest, ament-cmake-pep257, ament-cmake-uncrustify, ament-lint-auto, rclcpp, rclcpp-lifecycle, ros2launch, system-modes }:
buildRosPackage {
  pname = "ros-dashing-system-modes-examples";
  version = "0.5.0-r1";

  src = fetchurl {
    url = "https://github.com/microROS/system_modes-release/archive/release/dashing/system_modes_examples/0.5.0-1.tar.gz";
    name = "0.5.0-1.tar.gz";
    sha256 = "3d248062bd0c22c9c486037f696aa9d435b0ea95fd4df0eb7af72bec48c84412";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-cppcheck ament-cmake-cpplint ament-cmake-flake8 ament-cmake-gmock ament-cmake-gtest ament-cmake-pep257 ament-cmake-uncrustify ament-lint-auto ];
  propagatedBuildInputs = [ rclcpp rclcpp-lifecycle ros2launch system-modes ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Simple example system and according launch files for the system_modes
    package.'';
    license = with lib.licenses; [ asl20 ];
  };
}
