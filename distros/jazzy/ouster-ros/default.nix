
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, curl, eigen, geometry-msgs, gtest, jsoncpp, launch, launch-ros, libtins, ouster-sensor-msgs, pcl, pcl-conversions, pcl-ros, rclcpp, rclcpp-components, rclcpp-lifecycle, rosidl-default-generators, rosidl-default-runtime, sensor-msgs, spdlog, std-msgs, std-srvs, tf2-eigen, tf2-ros }:
buildRosPackage {
  pname = "ros-jazzy-ouster-ros";
  version = "0.11.1-r6";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ouster-ros-release/archive/release/jazzy/ouster_ros/0.11.1-6.tar.gz";
    name = "0.11.1-6.tar.gz";
    sha256 = "c1f1c3b62cad38f81243978c9863ec9a844417f0af39142f121ebd6d12a72697";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake eigen pcl rosidl-default-generators tf2-eigen ];
  checkInputs = [ gtest ];
  propagatedBuildInputs = [ curl geometry-msgs jsoncpp launch launch-ros libtins ouster-sensor-msgs pcl-conversions pcl-ros rclcpp rclcpp-components rclcpp-lifecycle rosidl-default-runtime sensor-msgs spdlog std-msgs std-srvs tf2-ros ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = "Ouster ROS2 driver";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
