
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ros2run, tlsf-cpp, rmw-implementation-cmake, launch, launch-testing, rttest, ament-lint-common, ament-cmake, pendulum-msgs, ament-cmake-pytest, rclcpp, ament-lint-auto }:
buildRosPackage {
  pname = "ros-crystal-pendulum-control";
  version = "0.6.2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/demos-release/archive/release/crystal/pendulum_control/0.6.2-0.tar.gz";
    name = "0.6.2-0.tar.gz";
    sha256 = "160c00093e5a42d1b3a66f3000c322ee41dd3c43a04103b6372c99db57475f98";
  };

  buildType = "ament_cmake";
  buildInputs = [ rclcpp pendulum-msgs rttest tlsf-cpp ];
  checkInputs = [ ros2run launch rmw-implementation-cmake launch-testing ament-lint-common ament-cmake-pytest ament-lint-auto ];
  propagatedBuildInputs = [ rclcpp pendulum-msgs rttest tlsf-cpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Demonstrates ROS 2's realtime capabilities with a simulated inverted pendulum.'';
    license = with lib.licenses; [ asl20 ];
  };
}
