
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, class-loader, generate-parameter-library, moveit-core, pluginlib, rclcpp, tf2-kdl, trac-ik-lib, urdf }:
buildRosPackage {
  pname = "ros-jazzy-trac-ik-kinematics-plugin";
  version = "2.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/trac_ik-release/archive/release/jazzy/trac_ik_kinematics_plugin/2.0.1-1.tar.gz";
    name = "2.0.1-1.tar.gz";
    sha256 = "00687b00121fd5c44047ca205e7d0bacf5cdde06c07ef08ba54378ac13ffaadc";
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
