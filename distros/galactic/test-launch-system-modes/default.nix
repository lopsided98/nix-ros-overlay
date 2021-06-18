
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-flake8, ament-cmake-pep257, ament-index-python, ament-lint-auto, builtin-interfaces, launch-system-modes, launch-testing-ament-cmake, launch-testing-ros, lifecycle-msgs, rclcpp, rclcpp-lifecycle, system-modes, system-modes-examples, system-modes-msgs }:
buildRosPackage {
  pname = "ros-galactic-test-launch-system-modes";
  version = "0.8.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/system_modes-release/archive/release/galactic/test_launch_system_modes/0.8.0-1.tar.gz";
    name = "0.8.0-1.tar.gz";
    sha256 = "e11602477c88318215d55fb1ee8e4bbcfd62b83ddc40311d1c6524c16bf87712";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-flake8 ament-cmake-pep257 ament-index-python ament-lint-auto launch-testing-ament-cmake launch-testing-ros ];
  propagatedBuildInputs = [ builtin-interfaces launch-system-modes lifecycle-msgs rclcpp rclcpp-lifecycle system-modes system-modes-examples system-modes-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Launch tests for the launch_system_modes package, i.e. launch actions, events, and event
    handlers for system modes.'';
    license = with lib.licenses; [ asl20 ];
  };
}
