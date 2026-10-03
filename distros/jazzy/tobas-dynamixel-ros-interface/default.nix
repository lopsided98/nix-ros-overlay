
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-jazzy-tobas-dynamixel-ros-interface";
  version = "2.16.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_dynamixel_ros_interface/2.16.5-1.tar.gz";
    name = "2.16.5-1.tar.gz";
    sha256 = "a51d09e823d0ef5c247a00c4a846f7cc9b5ddeef0f4c0899c8401a94dfb4d53c";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "C++ ROS 2 interface helpers for Dynamixel command and state topics.";
    license = with lib.licenses; [ gpl3Plus ];
  };
}
