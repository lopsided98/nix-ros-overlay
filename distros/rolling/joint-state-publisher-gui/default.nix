
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, joint-state-publisher, python-qt-binding, rclpy }:
buildRosPackage {
  pname = "ros-rolling-joint-state-publisher-gui";
  version = "2.4.1-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/joint_state_publisher-release/archive/release/rolling/joint_state_publisher_gui/2.4.1-2.tar.gz";
    name = "2.4.1-2.tar.gz";
    sha256 = "d39fef51b0cd5062e2e4f9bc90c181c8b1642ef93fe5e02021cc68a28e26f81e";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ joint-state-publisher python-qt-binding rclpy ];

  meta = {
    description = "This package contains a GUI tool for setting and publishing joint state values for a given URDF.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
