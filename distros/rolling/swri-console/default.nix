
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, qt5or6, rcl-interfaces, rclcpp, rcutils, rmw, rosbag2-storage, rosbag2-storage-mcap, rosbag2-transport }:
buildRosPackage {
  pname = "ros-rolling-swri-console";
  version = "2.4.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/swri_console-release/archive/release/rolling/swri_console/2.4.0-1.tar.gz";
    name = "2.4.0-1.tar.gz";
    sha256 = "6d7f8092798902ffb7e44f4eeceb0480214200fad8026358722242ef6c437ee8";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ qt5or6.qtbase rcl-interfaces rclcpp rcutils rmw rosbag2-storage rosbag2-storage-mcap rosbag2-transport ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "A rosout GUI viewer developed at Southwest Research Institute as an
     alternative to rqt_console.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
