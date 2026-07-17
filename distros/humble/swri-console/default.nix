
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, qt5, rcl-interfaces, rclcpp, rmw, rosbag2-storage-mcap, rosbag2-transport, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-humble-swri-console";
  version = "2.1.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/swri_console-release/archive/release/humble/swri_console/2.1.4-1.tar.gz";
    name = "2.1.4-1.tar.gz";
    sha256 = "75d745738438fb93640458fccf93b9253f498a87f3aa660a39f0cbcdc860dccc";
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
