
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-cppcheck, ament-cmake-cpplint, ament-cmake-flake8, ament-cmake-gmock, ament-cmake-gtest, ament-cmake-pep257, ament-cmake-uncrustify, ament-index-python, ament-lint-auto, builtin-interfaces, launch-ros, launch-testing-ament-cmake, launch-testing-ros, rclcpp, rclcpp-lifecycle, ros2run, system-modes-msgs }:
buildRosPackage {
  pname = "ros-galactic-system-modes";
  version = "0.9.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/system_modes-release/archive/release/galactic/system_modes/0.9.0-3.tar.gz";
    name = "0.9.0-3.tar.gz";
    sha256 = "b84f776055931e0504e1658d4e69b70700e84230c68b8ab91a14bd2b9c8b0ffc";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-cppcheck ament-cmake-cpplint ament-cmake-flake8 ament-cmake-gmock ament-cmake-gtest ament-cmake-pep257 ament-cmake-uncrustify ament-index-python ament-lint-auto launch-testing-ament-cmake launch-testing-ros ros2run ];
  propagatedBuildInputs = [ builtin-interfaces launch-ros rclcpp rclcpp-lifecycle system-modes-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''The system modes concept assumes that a robotics system is built
    from components with a lifecycle. It adds a notion of (sub-)systems,
    hiararchically grouping these nodes, as well as a notion of modes
    that determine the configuration of these nodes and (sub-)systems in
    terms of their parameter values.'';
    license = with lib.licenses; [ asl20 ];
  };
}
