
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, launch-testing-ros, ros2run, tlsf-cpp, rmw-implementation-cmake, launch, launch-testing, rttest, ament-lint-common, ament-cmake, pendulum-msgs, launch-testing-ament-cmake, ament-cmake-pytest, rclcpp, ament-lint-auto }:
buildRosPackage {
  pname = "ros-dashing-pendulum-control";
  version = "0.7.9-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/demos-release/archive/release/dashing/pendulum_control/0.7.9-1.tar.gz";
    name = "0.7.9-1.tar.gz";
    sha256 = "64ff9a219ff31bdd2f9c4e9c818e03af91d31ff8f63c3249af6d0b6ae0da1fe9";
  };

  buildType = "ament_cmake";
  buildInputs = [ rclcpp pendulum-msgs rttest tlsf-cpp ];
  checkInputs = [ launch-testing-ros ros2run launch rmw-implementation-cmake launch-testing ament-lint-common launch-testing-ament-cmake ament-cmake-pytest ament-lint-auto ];
  propagatedBuildInputs = [ rclcpp pendulum-msgs rttest tlsf-cpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Demonstrates ROS 2's realtime capabilities with a simulated inverted pendulum.'';
    license = with lib.licenses; [ asl20 ];
  };
}
