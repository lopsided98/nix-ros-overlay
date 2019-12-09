
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, launch-testing-ros, ros2run, tlsf-cpp, rmw-implementation-cmake, launch, launch-testing, rttest, ament-lint-common, ament-cmake, pendulum-msgs, launch-testing-ament-cmake, ament-cmake-pytest, rclcpp, ament-lint-auto }:
buildRosPackage {
  pname = "ros-eloquent-pendulum-control";
  version = "0.8.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/demos-release/archive/release/eloquent/pendulum_control/0.8.4-1.tar.gz";
    name = "0.8.4-1.tar.gz";
    sha256 = "3b4078f8e546179b3de03203174404ab2a8a6358ed6a1bbf7cea6c45196127d4";
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
