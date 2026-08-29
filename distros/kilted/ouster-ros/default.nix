
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, class-loader, curl, cv-bridge, eigen, geometry-msgs, gtest, jsoncpp, launch, launch-ros, libtins, libzip, ouster-sensor-msgs, pcl, pcl-conversions, rclcpp, rclcpp-components, rclcpp-lifecycle, rosidl-default-generators, rosidl-default-runtime, sensor-msgs, spdlog, std-msgs, std-srvs, tf2-eigen, tf2-ros }:
buildRosPackage {
  pname = "ros-kilted-ouster-ros";
  version = "0.15.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ouster-ros-release/archive/release/kilted/ouster_ros/0.15.1-1.tar.gz";
    name = "0.15.1-1.tar.gz";
    sha256 = "3b2b5c452f342fc442de6079c5d1856cf354577e02f94d1398b9904fca1c19e8";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake eigen libtins libzip pcl rosidl-default-generators tf2-eigen ];
  checkInputs = [ ament-cmake-gtest gtest ];
  propagatedBuildInputs = [ class-loader curl cv-bridge geometry-msgs jsoncpp launch launch-ros ouster-sensor-msgs pcl-conversions rclcpp rclcpp-components rclcpp-lifecycle rosidl-default-runtime sensor-msgs spdlog std-msgs std-srvs tf2-ros ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = "Ouster ROS2 driver";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
