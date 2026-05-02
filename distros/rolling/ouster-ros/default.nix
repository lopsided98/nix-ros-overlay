
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, class-loader, curl, cv-bridge, eigen, geometry-msgs, gtest, jsoncpp, launch, launch-ros, libtins, libzip, ouster-sensor-msgs, pcl, pcl-conversions, rclcpp, rclcpp-components, rclcpp-lifecycle, rosidl-default-generators, rosidl-default-runtime, sensor-msgs, spdlog, std-msgs, std-srvs, tf2-eigen, tf2-ros }:
buildRosPackage {
  pname = "ros-rolling-ouster-ros";
  version = "0.14.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ouster-ros-release/archive/release/rolling/ouster_ros/0.14.2-2.tar.gz";
    name = "0.14.2-2.tar.gz";
    sha256 = "6d1a2e2f40c74b3a61d1dbabe06a7fbc9c261d6fd64a714c9a448a15eef5e3cd";
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
