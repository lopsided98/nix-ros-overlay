
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, class-loader, generate-parameter-library, moveit-core, pluginlib, rclcpp, tf2-kdl, trac-ik-lib, urdf }:
buildRosPackage {
  pname = "ros-rolling-trac-ik-kinematics-plugin";
  version = "2.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/trac_ik-release/archive/release/rolling/trac_ik_kinematics_plugin/2.0.0-1.tar.gz";
    name = "2.0.0-1.tar.gz";
    sha256 = "d333cd8426ae2e536e699695cf63a89ba6fb1a508ceea90da96a6f17c0490187";
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
