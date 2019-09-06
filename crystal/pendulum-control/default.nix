
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-pytest, pendulum-msgs, rmw-implementation-cmake, ament-lint-common, rttest, ament-cmake, launch-testing, launch, rclcpp, ament-lint-auto, tlsf-cpp, ros2run }:
buildRosPackage {
  pname = "ros-crystal-pendulum-control";
  version = "0.6.2";

  src = fetchurl {
    url = https://github.com/ros2-gbp/demos-release/archive/release/crystal/pendulum_control/0.6.2-0.tar.gz;
    sha256 = "160c00093e5a42d1b3a66f3000c322ee41dd3c43a04103b6372c99db57475f98";
  };

  buildType = "ament_cmake";
  buildInputs = [ tlsf-cpp rclcpp rttest pendulum-msgs ];
  checkInputs = [ ament-cmake-pytest rmw-implementation-cmake ament-lint-common launch-testing launch ament-lint-auto ros2run ];
  propagatedBuildInputs = [ tlsf-cpp rclcpp rttest pendulum-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Demonstrates ROS 2's realtime capabilities with a simulated inverted pendulum.'';
    license = with lib.licenses; [ asl20 ];
  };
}
