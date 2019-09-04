
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-pytest, pendulum-msgs, rmw-implementation-cmake, ament-lint-common, rttest, ament-cmake, launch-testing, launch, launch-testing-ament-cmake, rclcpp, launch-testing-ros, ament-lint-auto, tlsf-cpp, ros2run }:
buildRosPackage {
  pname = "ros-dashing-pendulum-control";
  version = "0.7.8-r1";

  src = fetchurl {
    url = https://github.com/ros2-gbp/demos-release/archive/release/dashing/pendulum_control/0.7.8-1.tar.gz;
    sha256 = "6e40d0fb7334b28f72c27137d9509903465e0aab74aa2657c903f994dc383cc0";
  };

  buildType = "ament_cmake";
  buildInputs = [ tlsf-cpp rclcpp rttest pendulum-msgs ];
  checkInputs = [ ament-cmake-pytest rmw-implementation-cmake ament-lint-common launch-testing launch launch-testing-ament-cmake launch-testing-ros ament-lint-auto ros2run ];
  propagatedBuildInputs = [ tlsf-cpp rclcpp rttest pendulum-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Demonstrates ROS 2's realtime capabilities with a simulated inverted pendulum.'';
    license = with lib.licenses; [ asl20 ];
  };
}
