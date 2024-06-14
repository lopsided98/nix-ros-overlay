
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actuator-msgs, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, geometry-msgs, gps-msgs, gz-msgs-vendor, gz-transport-vendor, launch-ros, launch-testing, launch-testing-ament-cmake, nav-msgs, pkg-config, rclcpp, rclcpp-components, ros-gz-interfaces, rosgraph-msgs, rosidl-pycommon, sensor-msgs, std-msgs, tf2-msgs, trajectory-msgs, vision-msgs, yaml-cpp-vendor }:
buildRosPackage {
  pname = "ros-jazzy-ros-gz-bridge";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros_ign-release/archive/release/jazzy/ros_gz_bridge/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "637751780a0efda803f2c189435ea0c446ebe321aa727990ccbbae47729a0e7d";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake pkg-config rosidl-pycommon ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common launch-ros launch-testing launch-testing-ament-cmake ];
  propagatedBuildInputs = [ actuator-msgs geometry-msgs gps-msgs gz-msgs-vendor gz-transport-vendor nav-msgs rclcpp rclcpp-components ros-gz-interfaces rosgraph-msgs sensor-msgs std-msgs tf2-msgs trajectory-msgs vision-msgs yaml-cpp-vendor ];
  nativeBuildInputs = [ ament-cmake pkg-config rosidl-pycommon ];

  meta = {
    description = "Bridge communication between ROS and Gazebo Transport";
    license = with lib.licenses; [ asl20 ];
  };
}
