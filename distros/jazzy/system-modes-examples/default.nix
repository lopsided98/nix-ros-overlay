
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-cppcheck, ament-cmake-cpplint, ament-cmake-flake8, ament-cmake-gmock, ament-cmake-gtest, ament-cmake-pep257, ament-cmake-uncrustify, ament-lint-auto, launch, launch-system-modes, rclcpp, rclcpp-lifecycle, ros2launch, system-modes, system-modes-msgs }:
buildRosPackage {
  pname = "ros-jazzy-system-modes-examples";
  version = "0.9.0-r6";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/system_modes-release/archive/release/jazzy/system_modes_examples/0.9.0-6.tar.gz";
    name = "0.9.0-6.tar.gz";
    sha256 = "044d9d106ffc9913f93644748bd4d10b5f3b733d5892e0aee34fb638397843aa";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-cppcheck ament-cmake-cpplint ament-cmake-flake8 ament-cmake-gmock ament-cmake-gtest ament-cmake-pep257 ament-cmake-uncrustify ament-lint-auto ];
  propagatedBuildInputs = [ launch launch-system-modes rclcpp rclcpp-lifecycle ros2launch system-modes system-modes-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Example systems and according launch files for the system_modes
    package.";
    license = with lib.licenses; [ asl20 ];
  };
}
