
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-cppcheck, ament-cmake-cpplint, ament-cmake-flake8, ament-cmake-gmock, ament-cmake-gtest, ament-cmake-pep257, ament-cmake-uncrustify, ament-index-python, ament-lint-auto, builtin-interfaces, launch-ros, launch-testing-ament-cmake, launch-testing-ros, rclcpp, rclcpp-lifecycle, ros2run, system-modes-msgs }:
buildRosPackage {
  pname = "ros-rolling-system-modes";
  version = "0.9.0-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/system_modes-release/archive/release/rolling/system_modes/0.9.0-4.tar.gz";
    name = "0.9.0-4.tar.gz";
    sha256 = "a6be90288d9e10b4a9c08b3620c1f4b2226f56641203d741e36f41279b47d22b";
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
