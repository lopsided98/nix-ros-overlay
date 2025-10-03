
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, backward-ros, eigen, rclcpp-lifecycle, ros2-control-cmake }:
buildRosPackage {
  pname = "ros-rolling-kinematics-interface";
  version = "2.3.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/kinematics_interface-release/archive/release/rolling/kinematics_interface/2.3.0-1.tar.gz";
    name = "2.3.0-1.tar.gz";
    sha256 = "06e896b0ed02ef2ee503c06f74ced9aadd78f51c584756970aa24efc97236bcd";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ros2-control-cmake ];
  propagatedBuildInputs = [ backward-ros eigen rclcpp-lifecycle ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Kinematics interface for ROS 2 control";
    license = with lib.licenses; [ asl20 ];
  };
}
