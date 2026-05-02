
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, qt5, rcl-interfaces, rclcpp, rmw, rosbag2-storage-mcap, rosbag2-transport, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-rolling-swri-console";
  version = "2.1.2-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/swri_console-release/archive/release/rolling/swri_console/2.1.2-4.tar.gz";
    name = "2.1.2-4.tar.gz";
    sha256 = "48fd47c894eceb44c7923481689cebbb548d9a2f29a04961cf3222cf5b9b0e1b";
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
