
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-cppcheck, ament-cmake-cpplint, ament-cmake-flake8, ament-cmake-gmock, ament-cmake-gtest, ament-cmake-pep257, ament-cmake-uncrustify, ament-lint-auto, boost, builtin-interfaces, rclcpp, rclcpp-lifecycle, rosidl-default-generators, std-msgs }:
buildRosPackage {
  pname = "ros-foxy-system-modes";
  version = "0.2.1-r2";

  src = fetchurl {
    url = "https://github.com/microROS/system_modes-release/archive/release/foxy/system_modes/0.2.1-2.tar.gz";
    name = "0.2.1-2.tar.gz";
    sha256 = "3f4c848b7df17ac99743d412b7843311abdabc66d3b4120e99f85516a383c15f";
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
