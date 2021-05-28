
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-cppcheck, ament-cmake-cpplint, ament-cmake-flake8, ament-cmake-gmock, ament-cmake-gtest, ament-cmake-pep257, ament-cmake-uncrustify, ament-lint-auto, rclcpp, rclcpp-lifecycle, ros2launch, system-modes, system-modes-msgs }:
buildRosPackage {
  pname = "ros-foxy-system-modes-examples";
  version = "0.7.1-r4";

  src = fetchurl {
    url = "https://github.com/microROS/system_modes-release/archive/release/foxy/system_modes_examples/0.7.1-4.tar.gz";
    name = "0.7.1-4.tar.gz";
    sha256 = "0075eb8125e9d1e46c3ea91b954137a036c9a5fe73b3236e40ea61f87224174a";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-cppcheck ament-cmake-cpplint ament-cmake-flake8 ament-cmake-gmock ament-cmake-gtest ament-cmake-pep257 ament-cmake-uncrustify ament-lint-auto ];
  propagatedBuildInputs = [ rclcpp rclcpp-lifecycle ros2launch system-modes system-modes-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Simple example system and according launch files for the system_modes
    package.'';
    license = with lib.licenses; [ asl20 ];
  };
}
