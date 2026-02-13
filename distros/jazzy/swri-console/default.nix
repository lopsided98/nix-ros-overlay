
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, qt5, rcl-interfaces, rclcpp, rmw, rosbag2-storage-mcap, rosbag2-transport, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-jazzy-swri-console";
  version = "2.1.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/swri_console-release/archive/release/jazzy/swri_console/2.1.2-2.tar.gz";
    name = "2.1.2-2.tar.gz";
    sha256 = "8955b76cab8039a5ae96672681e672a57adf557b9b30b16b40b5a9d13f8860fb";
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
