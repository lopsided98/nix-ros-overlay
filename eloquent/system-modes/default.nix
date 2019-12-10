
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-cppcheck, ament-cmake-cpplint, ament-cmake-flake8, ament-cmake-gmock, ament-cmake-gtest, ament-cmake-pep257, ament-cmake-ros, ament-cmake-uncrustify, ament-lint-auto, boost, builtin-interfaces, rclcpp, rclcpp-lifecycle, rosidl-default-generators, std-msgs }:
buildRosPackage {
  pname = "ros-eloquent-system-modes";
  version = "0.1.5-r1";

  src = fetchurl {
    url = "https://github.com/microROS/system_modes-release/archive/release/eloquent/system_modes/0.1.5-1.tar.gz";
    name = "0.1.5-1.tar.gz";
    sha256 = "f328cbd28c04a2179b20f79e02a5c3bba588ca7bf33a3e53704b57e682baefe0";
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
