
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-pytest, pendulum-msgs, rmw-implementation-cmake, ament-lint-common, rttest, ament-cmake, launch-testing, launch, launch-testing-ament-cmake, rclcpp, launch-testing-ros, ament-lint-auto, tlsf-cpp, ros2run }:
buildRosPackage {
  pname = "ros-dashing-pendulum-control";
  version = "0.7.9-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/demos-release/archive/release/dashing/pendulum_control/0.7.9-1.tar.gz";
    name = "0.7.9-1.tar.gz";
    sha256 = "64ff9a219ff31bdd2f9c4e9c818e03af91d31ff8f63c3249af6d0b6ae0da1fe9";
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
