
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-cppcheck, ament-cmake-cpplint, ament-cmake-flake8, ament-cmake-gmock, ament-cmake-gtest, ament-cmake-pep257, ament-cmake-uncrustify, ament-lint-auto, rclcpp, rclcpp-lifecycle, ros2launch, system-modes }:
buildRosPackage {
  pname = "ros-foxy-system-modes-examples";
  version = "0.4.1-r1";

  src = fetchurl {
    url = "https://github.com/microROS/system_modes-release/archive/release/foxy/system_modes_examples/0.4.1-1.tar.gz";
    name = "0.4.1-1.tar.gz";
    sha256 = "ff9085393aca8207a1f75e0cf38b7c6dee28ce23868fdf97dc80576a929e0132";
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
