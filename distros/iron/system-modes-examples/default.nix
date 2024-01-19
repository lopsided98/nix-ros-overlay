
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-cppcheck, ament-cmake-cpplint, ament-cmake-flake8, ament-cmake-gmock, ament-cmake-gtest, ament-cmake-pep257, ament-cmake-uncrustify, ament-lint-auto, launch, launch-system-modes, rclcpp, rclcpp-lifecycle, ros2launch, system-modes, system-modes-msgs }:
buildRosPackage {
  pname = "ros-iron-system-modes-examples";
  version = "0.9.0-r5";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/system_modes-release/archive/release/iron/system_modes_examples/0.9.0-5.tar.gz";
    name = "0.9.0-5.tar.gz";
    sha256 = "ca7c2ace510579413afc78cca0d57d5bf6b1434fa5274d9b333a7e808cefd930";
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
