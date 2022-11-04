
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-flake8, ament-cmake-pep257, ament-index-python, ament-lint-auto, builtin-interfaces, launch-system-modes, launch-testing-ament-cmake, launch-testing-ros, lifecycle-msgs, rclcpp, rclcpp-lifecycle, system-modes, system-modes-examples, system-modes-msgs }:
buildRosPackage {
  pname = "ros-foxy-test-launch-system-modes";
  version = "0.9.0-r1";

  src = fetchurl {
    url = "https://github.com/microROS/system_modes-release/archive/release/foxy/test_launch_system_modes/0.9.0-1.tar.gz";
    name = "0.9.0-1.tar.gz";
    sha256 = "700fc5b26ae1dbfe58891f793a8c64ebbfe6d3a2dfbb94c7729ae2428f2f1bb3";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-flake8 ament-cmake-pep257 ament-index-python ament-lint-auto launch-testing-ament-cmake launch-testing-ros ];
  propagatedBuildInputs = [ builtin-interfaces launch-system-modes lifecycle-msgs rclcpp rclcpp-lifecycle system-modes system-modes-examples system-modes-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Launch tests for the launch_system_modes package, i.e. launch actions, events, and event
    handlers for system modes.'';
    license = with lib.licenses; [ asl20 ];
  };
}
