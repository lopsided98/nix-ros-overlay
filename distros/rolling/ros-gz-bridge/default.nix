
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actuator-msgs, ament-cmake, ament-cmake-gtest, ament-cmake-python, ament-lint-auto, ament-lint-common, geometry-msgs, gps-msgs, gz-msgs-vendor, gz-transport-vendor, launch, launch-ros, launch-testing, launch-testing-ament-cmake, nav-msgs, pkg-config, rclcpp, rclcpp-components, ros-gz-interfaces, rosgraph-msgs, rosidl-pycommon, sensor-msgs, std-msgs, tf2-msgs, trajectory-msgs, vision-msgs, yaml-cpp-vendor }:
buildRosPackage {
  pname = "ros-rolling-ros-gz-bridge";
  version = "3.0.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros_ign-release/archive/release/rolling/ros_gz_bridge/3.0.3-1.tar.gz";
    name = "3.0.3-1.tar.gz";
    sha256 = "874098d16db878fd3ad7106b722d28194f86267be78dc0d739e498064048fa93";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-python pkg-config rosidl-pycommon ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common launch-ros launch-testing launch-testing-ament-cmake ];
  propagatedBuildInputs = [ actuator-msgs geometry-msgs gps-msgs gz-msgs-vendor gz-transport-vendor launch launch-ros nav-msgs rclcpp rclcpp-components ros-gz-interfaces rosgraph-msgs sensor-msgs std-msgs tf2-msgs trajectory-msgs vision-msgs yaml-cpp-vendor ];
  nativeBuildInputs = [ ament-cmake ament-cmake-python pkg-config rosidl-pycommon ];

  meta = {
    description = "Bridge communication between ROS and Gazebo Transport";
    license = with lib.licenses; [ asl20 ];
  };
}
