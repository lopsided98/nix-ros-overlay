
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, class-loader, generate-parameter-library, moveit-core, pluginlib, rclcpp, tf2-kdl, trac-ik-lib, urdf }:
buildRosPackage {
  pname = "ros-kilted-trac-ik-kinematics-plugin";
  version = "2.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/trac_ik-release/archive/release/kilted/trac_ik_kinematics_plugin/2.1.0-1.tar.gz";
    name = "2.1.0-1.tar.gz";
    sha256 = "3ea8e4839d1e9effd78cc2341eac511144cef86a48ab07475052bb3146a189a8";
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
