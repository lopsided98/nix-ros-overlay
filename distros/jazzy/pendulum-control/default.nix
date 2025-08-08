
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-pytest, ament-lint-auto, ament-lint-common, launch, launch-testing, launch-testing-ament-cmake, launch-testing-ros, pendulum-msgs, rclcpp, rmw-implementation-cmake, ros2run, rttest, tlsf-cpp }:
buildRosPackage {
  pname = "ros-jazzy-pendulum-control";
  version = "0.33.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/demos-release/archive/release/jazzy/pendulum_control/0.33.6-1.tar.gz";
    name = "0.33.6-1.tar.gz";
    sha256 = "c97171c43046d25e3756a408050f41aa0cedab1f46ae3cd17cb2b978bd5bab53";
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
