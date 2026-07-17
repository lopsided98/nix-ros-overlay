
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, qt5, rcl-interfaces, rclcpp, rmw, rosbag2-storage-mcap, rosbag2-transport, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-kilted-swri-console";
  version = "2.1.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/swri_console-release/archive/release/kilted/swri_console/2.1.4-1.tar.gz";
    name = "2.1.4-1.tar.gz";
    sha256 = "a68f1dd95183d776a1b8a4a6aea9b8489ce4d06d944286e45925923b18377930";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  propagatedBuildInputs = [ qt5.qtbase rcl-interfaces rclcpp rmw rosbag2-storage-mcap rosbag2-transport rosidl-default-runtime ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = "A rosout GUI viewer developed at Southwest Research Institute as an
     alternative to rqt_console.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
