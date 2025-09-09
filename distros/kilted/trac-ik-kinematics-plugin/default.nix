
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, class-loader, generate-parameter-library, moveit-core, pluginlib, rclcpp, tf2-kdl, trac-ik-lib, urdf }:
buildRosPackage {
  pname = "ros-kilted-trac-ik-kinematics-plugin";
  version = "2.1.1-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/trac_ik-release/archive/release/kilted/trac_ik_kinematics_plugin/2.1.1-2.tar.gz";
    name = "2.1.1-2.tar.gz";
    sha256 = "dfe65606edb4c443335d9ffda165f44441a0a300958278d730671b21b1092b29";
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
