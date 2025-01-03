
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, boost, qt5, rcl-interfaces, rclcpp, rosbag2-storage-mcap, rosbag2-transport, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-humble-swri-console";
  version = "2.0.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/swri_console-release/archive/release/humble/swri_console/2.0.6-1.tar.gz";
    name = "2.0.6-1.tar.gz";
    sha256 = "7a6c7e86cd6ed800e3291ca2d3f4886c80fa3ca6c6936ca5095ae0dbc02f2ab0";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  propagatedBuildInputs = [ boost qt5.qtbase rcl-interfaces rclcpp rosbag2-storage-mcap rosbag2-transport rosidl-default-runtime ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = "A rosout GUI viewer developed at Southwest Research Institute as an
     alternative to rqt_console.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
