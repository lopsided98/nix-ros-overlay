
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, joint-state-publisher, python-qt-binding, rclpy }:
buildRosPackage {
  pname = "ros-lyrical-joint-state-publisher-gui";
  version = "2.4.1-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/joint_state_publisher-release/archive/release/lyrical/joint_state_publisher_gui/2.4.1-3.tar.gz";
    name = "2.4.1-3.tar.gz";
    sha256 = "4fa404d4238d1f8bf8515bd9d2923cc94c5c52ddd5c4db2aab79ea2892fa3785";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ joint-state-publisher python-qt-binding rclpy ];

  meta = {
    description = "This package contains a GUI tool for setting and publishing joint state values for a given URDF.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
