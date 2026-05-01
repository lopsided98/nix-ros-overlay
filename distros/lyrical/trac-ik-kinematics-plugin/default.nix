
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, class-loader, generate-parameter-library, moveit-core, pluginlib, rclcpp, tf2-kdl, trac-ik-lib, urdf }:
buildRosPackage {
  pname = "ros-lyrical-trac-ik-kinematics-plugin";
  version = "2.2.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/trac_ik-release/archive/release/lyrical/trac_ik_kinematics_plugin/2.2.0-3.tar.gz";
    name = "2.2.0-3.tar.gz";
    sha256 = "a05b3eeb4212896a4904f84ebc1faec623f5575cd9f895a674301b86fe260ce8";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ class-loader generate-parameter-library moveit-core pluginlib rclcpp tf2-kdl trac-ik-lib urdf ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "A MoveIt! Kinematics plugin using TRAC-IK";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
