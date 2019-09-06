
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, builtin-interfaces, ament-cmake, rclcpp-lifecycle, ament-cmake-gmock, boost, ament-cmake-uncrustify, rosidl-default-generators, ament-cmake-gtest, ament-cmake-flake8, ament-cmake-cppcheck, ament-cmake-pep257, rclcpp, ament-cmake-ros, std-msgs, ament-lint-auto, ament-cmake-cpplint }:
buildRosPackage {
  pname = "ros-crystal-system-modes";
  version = "0.1.3-r1";

  src = fetchurl {
    url = https://github.com/microROS/system_modes-release/archive/release/crystal/system_modes/0.1.3-1.tar.gz;
    sha256 = "416b5b1c3e63223b949fd1ef38c4ad860204939dae003721c65389f69bf20d71";
  };

  buildType = "ament_cmake";
  buildInputs = [ builtin-interfaces rclcpp-lifecycle boost rosidl-default-generators rclcpp std-msgs ];
  checkInputs = [ ament-cmake ament-cmake-uncrustify ament-cmake-gmock ament-cmake-gtest ament-cmake-flake8 ament-cmake-cppcheck ament-cmake-pep257 ament-lint-auto ament-cmake-cpplint ];
  propagatedBuildInputs = [ builtin-interfaces rclcpp-lifecycle boost rosidl-default-generators rclcpp std-msgs ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''Model-based distributed configuration handling.'';
    license = with lib.licenses; [ asl20 ];
  };
}
