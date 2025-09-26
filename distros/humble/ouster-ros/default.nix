
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, curl, cv-bridge, eigen, geometry-msgs, gtest, jsoncpp, launch, launch-ros, libtins, ouster-sensor-msgs, pcl, pcl-conversions, pcl-ros, rclcpp, rclcpp-components, rclcpp-lifecycle, rosidl-default-generators, rosidl-default-runtime, sensor-msgs, spdlog, std-msgs, std-srvs, tf2-eigen, tf2-ros }:
buildRosPackage {
  pname = "ros-humble-ouster-ros";
  version = "0.13.14-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ouster-ros-release/archive/release/humble/ouster_ros/0.13.14-2.tar.gz";
    name = "0.13.14-2.tar.gz";
    sha256 = "1805ac35dfc71c192752624c4b311d828363cfc5e92afe512de8190109be9a10";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake eigen pcl rosidl-default-generators tf2-eigen ];
  checkInputs = [ gtest ];
  propagatedBuildInputs = [ curl cv-bridge geometry-msgs jsoncpp launch launch-ros libtins ouster-sensor-msgs pcl-conversions pcl-ros rclcpp rclcpp-components rclcpp-lifecycle rosidl-default-runtime sensor-msgs spdlog std-msgs std-srvs tf2-ros ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = "Ouster ROS2 driver";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
