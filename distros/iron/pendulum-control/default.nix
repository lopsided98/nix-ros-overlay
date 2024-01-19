
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-pytest, ament-lint-auto, ament-lint-common, launch, launch-testing, launch-testing-ament-cmake, launch-testing-ros, pendulum-msgs, rclcpp, rmw-implementation-cmake, ros2run, rttest, tlsf-cpp }:
buildRosPackage {
  pname = "ros-iron-pendulum-control";
  version = "0.27.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/demos-release/archive/release/iron/pendulum_control/0.27.1-1.tar.gz";
    name = "0.27.1-1.tar.gz";
    sha256 = "b6abe0c8e6805d3a23e57338a30f50398e2eae6c91eeecb3058f46e03d7370db";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-pytest ament-lint-auto ament-lint-common launch launch-testing launch-testing-ament-cmake launch-testing-ros rmw-implementation-cmake ros2run ];
  propagatedBuildInputs = [ pendulum-msgs rclcpp rttest tlsf-cpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Demonstrates ROS 2's realtime capabilities with a simulated inverted pendulum.'';
    license = with lib.licenses; [ asl20 ];
  };
}
