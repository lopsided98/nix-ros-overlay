
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-jazzy-tobas-dynamixel-ros-interface";
  version = "2.16.9-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_dynamixel_ros_interface/2.16.9-1.tar.gz";
    name = "2.16.9-1.tar.gz";
    sha256 = "fb34761e0719fd4297be6240126389cc7f39c2287e20f10d31e3b3007ef0e753";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "C++ ROS 2 interface helpers for Dynamixel command and state topics.";
    license = with lib.licenses; [ gpl3Plus ];
  };
}
