
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-cppcheck, ament-cmake-cpplint, ament-cmake-flake8, ament-cmake-gmock, ament-cmake-gtest, ament-cmake-pep257, ament-cmake-uncrustify, ament-lint-auto, builtin-interfaces, launch-ros, rclcpp, rclcpp-lifecycle, rosidl-default-generators, std-msgs }:
buildRosPackage {
  pname = "ros-foxy-system-modes";
  version = "0.4.1-r1";

  src = fetchurl {
    url = "https://github.com/microROS/system_modes-release/archive/release/foxy/system_modes/0.4.1-1.tar.gz";
    name = "0.4.1-1.tar.gz";
    sha256 = "5d86d95d5fc65c34aafc5699d23271dbbfdcc01ca6219af69f600fac876a1dc4";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-cppcheck ament-cmake-cpplint ament-cmake-flake8 ament-cmake-gmock ament-cmake-gtest ament-cmake-pep257 ament-cmake-uncrustify ament-lint-auto ];
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
