
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actuator-msgs, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, geometry-msgs, gps-msgs, ignition, launch-ros, launch-testing, launch-testing-ament-cmake, nav-msgs, pkg-config, rclcpp, rclcpp-components, ros-gz-interfaces, rosgraph-msgs, sensor-msgs, std-msgs, tf2-msgs, trajectory-msgs, vision-msgs, yaml-cpp-vendor }:
buildRosPackage {
  pname = "ros-humble-ros-gz-bridge";
  version = "0.244.21-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros_ign-release/archive/release/humble/ros_gz_bridge/0.244.21-1.tar.gz";
    name = "0.244.21-1.tar.gz";
    sha256 = "8d43b1305826dd02b4045da51367c80435b02c528321a9f37a13ca9b08cb2d76";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake pkg-config ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common launch-ros launch-testing launch-testing-ament-cmake ];
  propagatedBuildInputs = [ actuator-msgs geometry-msgs gps-msgs ignition.msgs8 ignition.transport11 nav-msgs rclcpp rclcpp-components ros-gz-interfaces rosgraph-msgs sensor-msgs std-msgs tf2-msgs trajectory-msgs vision-msgs yaml-cpp-vendor ];
  nativeBuildInputs = [ ament-cmake pkg-config ];

  meta = {
    description = "Bridge communication between ROS and Gazebo Transport";
    license = with lib.licenses; [ asl20 ];
  };
}
