
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-cppcheck, ament-cmake-cpplint, ament-cmake-flake8, ament-cmake-gmock, ament-cmake-gtest, ament-cmake-pep257, ament-cmake-uncrustify, ament-index-python, ament-lint-auto, builtin-interfaces, launch-ros, launch-testing-ament-cmake, launch-testing-ros, rclcpp, rclcpp-lifecycle, ros2run, rosidl-default-generators, std-msgs }:
buildRosPackage {
  pname = "ros-foxy-system-modes";
  version = "0.5.0-r6";

  src = fetchurl {
    url = "https://github.com/microROS/system_modes-release/archive/release/foxy/system_modes/0.5.0-6.tar.gz";
    name = "0.5.0-6.tar.gz";
    sha256 = "bff1f9647b051843cd56e0f83e89e0198f74de1b682c2f936bc8954e994d580b";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-cppcheck ament-cmake-cpplint ament-cmake-flake8 ament-cmake-gmock ament-cmake-gtest ament-cmake-pep257 ament-cmake-uncrustify ament-index-python ament-lint-auto launch-testing-ament-cmake launch-testing-ros ros2run ];
  propagatedBuildInputs = [ builtin-interfaces launch-ros rclcpp rclcpp-lifecycle rosidl-default-generators std-msgs ];
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
