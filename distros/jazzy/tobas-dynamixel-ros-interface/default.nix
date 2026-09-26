
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-jazzy-tobas-dynamixel-ros-interface";
  version = "2.16.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_dynamixel_ros_interface/2.16.4-1.tar.gz";
    name = "2.16.4-1.tar.gz";
    sha256 = "d5650ff414470432e0409c051cf8a4177b4958154a0f0bfa325bea0eabf63c2b";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "C++ ROS 2 interface helpers for Dynamixel command and state topics.";
    license = with lib.licenses; [ gpl3Plus ];
  };
}
