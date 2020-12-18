
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-cppcheck, ament-cmake-cpplint, ament-cmake-flake8, ament-cmake-gmock, ament-cmake-gtest, ament-cmake-pep257, ament-cmake-uncrustify, ament-lint-auto, rclcpp, rclcpp-lifecycle, ros2launch, system-modes }:
buildRosPackage {
  pname = "ros-eloquent-system-modes-examples";
  version = "0.4.2-r2";

  src = fetchurl {
    url = "https://github.com/microROS/system_modes-release/archive/release/eloquent/system_modes_examples/0.4.2-2.tar.gz";
    name = "0.4.2-2.tar.gz";
    sha256 = "b55a935ab0797a3779a5e474a9bc1d9c516fc62ba1eef10d1ffe146ae4010a16";
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
