
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, curl, cv-bridge, eigen, geometry-msgs, gtest, jsoncpp, launch, launch-ros, libtins, libzip, ouster-sensor-msgs, pcl, pcl-conversions, rclcpp, rclcpp-components, rclcpp-lifecycle, rosidl-default-generators, rosidl-default-runtime, sensor-msgs, spdlog, std-msgs, std-srvs, tf2-eigen, tf2-ros }:
buildRosPackage {
  pname = "ros-humble-ouster-ros";
  version = "0.14.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ouster-ros-release/archive/release/humble/ouster_ros/0.14.1-1.tar.gz";
    name = "0.14.1-1.tar.gz";
    sha256 = "21bf077cd2e8e8c04139f18d2e68f5df24268d99163c027b01cfa20061425b83";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake eigen libtins libzip pcl rosidl-default-generators tf2-eigen ];
  checkInputs = [ gtest ];
  propagatedBuildInputs = [ curl cv-bridge geometry-msgs jsoncpp launch launch-ros ouster-sensor-msgs pcl-conversions rclcpp rclcpp-components rclcpp-lifecycle rosidl-default-runtime sensor-msgs spdlog std-msgs std-srvs tf2-ros ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = "Ouster ROS2 driver";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
