
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-pytest, ament-lint-auto, ament-lint-common, launch, launch-testing, launch-testing-ament-cmake, launch-testing-ros, pendulum-msgs, rclcpp, rmw-implementation-cmake, ros2run, rttest, tlsf-cpp }:
buildRosPackage {
  pname = "ros-jazzy-pendulum-control";
  version = "0.33.9-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/demos-release/archive/release/jazzy/pendulum_control/0.33.9-1.tar.gz";
    name = "0.33.9-1.tar.gz";
    sha256 = "bded63a4da77222b2ca3e25ff65425c8f9b65d800bc2e0a1e79d0dddf458be5e";
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
