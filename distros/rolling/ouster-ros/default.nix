
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, curl, eigen, geometry-msgs, gtest, jsoncpp, launch, launch-ros, libtins, ouster-sensor-msgs, pcl, pcl-conversions, pcl-ros, rclcpp, rclcpp-components, rclcpp-lifecycle, rosidl-default-generators, rosidl-default-runtime, sensor-msgs, spdlog, std-msgs, std-srvs, tf2-eigen, tf2-ros }:
buildRosPackage {
  pname = "ros-rolling-ouster-ros";
  version = "0.11.1-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ouster-ros-release/archive/release/rolling/ouster_ros/0.11.1-4.tar.gz";
    name = "0.11.1-4.tar.gz";
    sha256 = "9d59c51c89662f2dd2f2968b24fff73fb9286ebd47f0ecdd226daa8fd0d83b88";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake eigen pcl rosidl-default-generators tf2-eigen ];
  checkInputs = [ gtest ];
  propagatedBuildInputs = [ curl geometry-msgs jsoncpp launch launch-ros libtins ouster-sensor-msgs pcl-conversions pcl-ros rclcpp rclcpp-components rclcpp-lifecycle rosidl-default-runtime sensor-msgs spdlog std-msgs std-srvs tf2-ros ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = ''Ouster ROS2 driver'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
