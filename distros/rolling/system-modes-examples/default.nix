
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-cppcheck, ament-cmake-cpplint, ament-cmake-flake8, ament-cmake-gmock, ament-cmake-gtest, ament-cmake-pep257, ament-cmake-uncrustify, ament-lint-auto, launch, launch-system-modes, rclcpp, rclcpp-lifecycle, ros2launch, system-modes, system-modes-msgs }:
buildRosPackage {
  pname = "ros-rolling-system-modes-examples";
  version = "0.9.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/system_modes-release/archive/release/rolling/system_modes_examples/0.9.0-3.tar.gz";
    name = "0.9.0-3.tar.gz";
    sha256 = "22a8d0370d2b34b612304128f1167759746aa25f40e11146b3229e8d5349827b";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-cppcheck ament-cmake-cpplint ament-cmake-flake8 ament-cmake-gmock ament-cmake-gtest ament-cmake-pep257 ament-cmake-uncrustify ament-lint-auto ];
  propagatedBuildInputs = [ launch launch-system-modes rclcpp rclcpp-lifecycle ros2launch system-modes system-modes-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Example systems and according launch files for the system_modes
    package.'';
    license = with lib.licenses; [ asl20 ];
  };
}
