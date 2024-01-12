
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, curl, eigen, geometry-msgs, gtest, jsoncpp, launch, launch-ros, libtins, ouster-msgs, pcl, pcl-conversions, pcl-ros, rclcpp, rclcpp-components, rclcpp-lifecycle, rosidl-default-generators, rosidl-default-runtime, sensor-msgs, spdlog, std-msgs, std-srvs, tf2-eigen, tf2-ros }:
buildRosPackage {
  pname = "ros-iron-ouster-ros";
  version = "0.10.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ouster-ros-release/archive/release/iron/ouster_ros/0.10.4-1.tar.gz";
    name = "0.10.4-1.tar.gz";
    sha256 = "0e8186623ac77f8f175c96f2ed4eb4d08abd4f52684a73eabe6f44a26cc578ec";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake eigen pcl rosidl-default-generators tf2-eigen ];
  checkInputs = [ gtest ];
  propagatedBuildInputs = [ curl geometry-msgs jsoncpp launch launch-ros libtins ouster-msgs pcl-conversions pcl-ros rclcpp rclcpp-components rclcpp-lifecycle rosidl-default-runtime sensor-msgs spdlog std-msgs std-srvs tf2-ros ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = ''Ouster ROS2 driver'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
