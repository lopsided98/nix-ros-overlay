
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-cppcheck, ament-cmake-cpplint, ament-cmake-flake8, ament-cmake-gmock, ament-cmake-gtest, ament-cmake-pep257, ament-cmake-ros, ament-cmake-uncrustify, ament-lint-auto, boost, builtin-interfaces, rclcpp, rclcpp-lifecycle, rosidl-default-generators, std-msgs }:
buildRosPackage {
  pname = "ros-eloquent-system-modes";
  version = "0.2.0-r3";

  src = fetchurl {
    url = "https://github.com/microROS/system_modes-release/archive/release/eloquent/system_modes/0.2.0-3.tar.gz";
    name = "0.2.0-3.tar.gz";
    sha256 = "bcb0096786248d9f3bbc3aa604dcb85929e7da1cc80e143e12e6854241c3206d";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake ament-cmake-cppcheck ament-cmake-cpplint ament-cmake-flake8 ament-cmake-gmock ament-cmake-gtest ament-cmake-pep257 ament-cmake-uncrustify ament-lint-auto ];
  propagatedBuildInputs = [ boost builtin-interfaces rclcpp rclcpp-lifecycle rosidl-default-generators std-msgs ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''Model-based distributed configuration handling.'';
    license = with lib.licenses; [ asl20 ];
  };
}
