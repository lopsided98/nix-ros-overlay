
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, backward-ros, eigen, rclcpp-lifecycle, ros2-control-cmake }:
buildRosPackage {
  pname = "ros-kilted-kinematics-interface";
  version = "2.3.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/kinematics_interface-release/archive/release/kilted/kinematics_interface/2.3.0-1.tar.gz";
    name = "2.3.0-1.tar.gz";
    sha256 = "0187d6a1387f6aec0ee01e7fc33e543c04a7c638a87da47cfc5dd3d2c8b0d75f";
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
