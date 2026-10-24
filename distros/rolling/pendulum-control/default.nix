
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-pytest, ament-cmake-ros-core, ament-lint-auto, ament-lint-common, launch, launch-testing, launch-testing-ament-cmake, launch-testing-ros, pendulum-msgs, rclcpp, rmw-implementation-cmake, ros2run, rttest, tlsf-cpp }:
buildRosPackage {
  pname = "ros-rolling-pendulum-control";
  version = "0.38.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/demos-release/archive/release/rolling/pendulum_control/0.38.1-1.tar.gz";
    name = "0.38.1-1.tar.gz";
    sha256 = "9f6b082b2f0f14552a3e71b998f5520b3c01699b2d562e2042ef49a7f0dbb7cb";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-ros-core ];
  checkInputs = [ ament-cmake-pytest ament-lint-auto ament-lint-common launch launch-testing launch-testing-ament-cmake launch-testing-ros rmw-implementation-cmake ros2run ];
  propagatedBuildInputs = [ pendulum-msgs rclcpp rttest tlsf-cpp ];
  nativeBuildInputs = [ ament-cmake ament-cmake-ros-core ];

  meta = {
    description = "Demonstrates ROS 2's realtime capabilities with a simulated inverted pendulum.";
    license = with lib.licenses; [ asl20 ];
  };
}
