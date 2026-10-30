
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actuator-msgs, ament-cmake, ament-cmake-gtest, ament-cmake-python, ament-lint-auto, ament-lint-common, builtin-interfaces, geometry-msgs, gps-msgs, gz-msgs-vendor, gz-transport-vendor, launch, launch-ros, launch-testing, launch-testing-ament-cmake, marine-acoustic-msgs, nav-msgs, rcl-interfaces, rclcpp, rclcpp-components, ros-gz-interfaces, rosgraph-msgs, rosidl-pycommon, sensor-msgs, std-msgs, tf2-msgs, trajectory-msgs, vision-msgs, yaml-cpp-vendor }:
buildRosPackage {
  pname = "ros-rolling-ros-gz-bridge";
  version = "4.0.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros_ign-release/archive/release/rolling/ros_gz_bridge/4.0.3-1.tar.gz";
    name = "4.0.3-1.tar.gz";
    sha256 = "1f185049d0a2b3f3fc08e3083698e5f24995fac479e15270957caa006b3ac7c4";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-python ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common launch-testing launch-testing-ament-cmake ];
  propagatedBuildInputs = [ actuator-msgs builtin-interfaces geometry-msgs gps-msgs gz-msgs-vendor gz-transport-vendor launch launch-ros marine-acoustic-msgs nav-msgs rcl-interfaces rclcpp rclcpp-components ros-gz-interfaces rosgraph-msgs rosidl-pycommon sensor-msgs std-msgs tf2-msgs trajectory-msgs vision-msgs yaml-cpp-vendor ];
  nativeBuildInputs = [ ament-cmake ament-cmake-python ];

  meta = {
    description = "Bridge communication between ROS and Gazebo Transport";
    license = with lib.licenses; [ asl20 ];
  };
}
