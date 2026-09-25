
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-jazzy-tobas-dynamixel-ros-interface";
  version = "2.16.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_dynamixel_ros_interface/2.16.2-2.tar.gz";
    name = "2.16.2-2.tar.gz";
    sha256 = "5196a5f274126c6c1d9373a2ca2fa3697d7cc8ac65a89ded8ff18e1e513a67f9";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "C++ ROS 2 interface helpers for Dynamixel command and state topics.";
    license = with lib.licenses; [ gpl3Plus ];
  };
}
