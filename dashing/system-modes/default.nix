
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, builtin-interfaces, ament-cmake, rclcpp-lifecycle, ament-cmake-gmock, boost, ament-cmake-uncrustify, rosidl-default-generators, ament-cmake-gtest, ament-cmake-flake8, ament-cmake-cppcheck, ament-cmake-pep257, rclcpp, ament-cmake-ros, std-msgs, ament-lint-auto, ament-cmake-cpplint }:
buildRosPackage rec {
  pname = "ros-dashing-system-modes";
  version = "0.1.4-r1";

  src = fetchurl {
    url = "https://github.com/microROS/system_modes-release/archive/release/dashing/system_modes/0.1.4-1.tar.gz";
    name = "0.1.4-1.tar.gz";
    sha256 = "b2eb0ff85a3f98c18d0b23c8599579e2e3a200d891a2a1de36d356cce9ecce60";
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
