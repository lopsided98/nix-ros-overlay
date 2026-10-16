
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-jazzy-tobas-dynamixel-ros-interface";
  version = "2.16.8-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_dynamixel_ros_interface/2.16.8-1.tar.gz";
    name = "2.16.8-1.tar.gz";
    sha256 = "a8aed6c49bb52156319d6f4e2a7f2944c3ed07b9e6b69b236f3cc85a98d9382b";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "C++ ROS 2 interface helpers for Dynamixel command and state topics.";
    license = with lib.licenses; [ gpl3Plus ];
  };
}
