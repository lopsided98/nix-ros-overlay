
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, class-loader, curl, cv-bridge, eigen, geometry-msgs, gtest, jsoncpp, launch, launch-ros, libtins, libzip, ouster-sensor-msgs, pcl, pcl-conversions, rclcpp, rclcpp-components, rclcpp-lifecycle, rosidl-default-generators, rosidl-default-runtime, sensor-msgs, spdlog, std-msgs, std-srvs, tf2-eigen, tf2-ros }:
buildRosPackage {
  pname = "ros-lyrical-ouster-ros";
  version = "0.14.2-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ouster-ros-release/archive/release/lyrical/ouster_ros/0.14.2-3.tar.gz";
    name = "0.14.2-3.tar.gz";
    sha256 = "30d25c474a85114093225a79d6c6cd5bff8429843425e5ae7a11bb3c99d919a6";
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
