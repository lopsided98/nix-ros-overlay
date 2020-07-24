
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-cppcheck, ament-cmake-cpplint, ament-cmake-flake8, ament-cmake-gmock, ament-cmake-gtest, ament-cmake-pep257, ament-cmake-uncrustify, ament-lint-auto, boost, builtin-interfaces, rclcpp, rclcpp-lifecycle, rosidl-default-generators, std-msgs }:
buildRosPackage {
  pname = "ros-dashing-system-modes";
  version = "0.2.1-r7";

  src = fetchurl {
    url = "https://github.com/microROS/system_modes-release/archive/release/dashing/system_modes/0.2.1-7.tar.gz";
    name = "0.2.1-7.tar.gz";
    sha256 = "bde3b4e6e9a2dbe37c51ff40d13568786f410b7dc9e681c3ed9650a76c18b197";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-cppcheck ament-cmake-cpplint ament-cmake-flake8 ament-cmake-gmock ament-cmake-gtest ament-cmake-pep257 ament-cmake-uncrustify ament-lint-auto ];
  propagatedBuildInputs = [ boost builtin-interfaces rclcpp rclcpp-lifecycle rosidl-default-generators std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Model-based distributed configuration handling.'';
    license = with lib.licenses; [ asl20 ];
  };
}
