
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-pytest, ament-lint-auto, ament-lint-common, launch, launch-testing, launch-testing-ament-cmake, launch-testing-ros, pendulum-msgs, rclcpp, rmw-implementation-cmake, ros2run, rttest, tlsf-cpp }:
buildRosPackage {
  pname = "ros-iron-pendulum-control";
  version = "0.27.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/demos-release/archive/release/iron/pendulum_control/0.27.2-1.tar.gz";
    name = "0.27.2-1.tar.gz";
    sha256 = "56165628abb9ebec273e5906e4b90eb1dd6e6062a52470d188dc50efcb9f514d";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-pytest ament-lint-auto ament-lint-common launch launch-testing launch-testing-ament-cmake launch-testing-ros rmw-implementation-cmake ros2run ];
  propagatedBuildInputs = [ pendulum-msgs rclcpp rttest tlsf-cpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Demonstrates ROS 2's realtime capabilities with a simulated inverted pendulum.";
    license = with lib.licenses; [ asl20 ];
  };
}
