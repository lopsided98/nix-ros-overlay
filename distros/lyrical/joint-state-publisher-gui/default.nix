
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, joint-state-publisher, python-qt-binding, rclpy }:
buildRosPackage {
  pname = "ros-lyrical-joint-state-publisher-gui";
  version = "2.4.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/joint_state_publisher-release/archive/release/lyrical/joint_state_publisher_gui/2.4.2-1.tar.gz";
    name = "2.4.2-1.tar.gz";
    sha256 = "4b029e37e35ed2cfb627be2c685987ee8b30273d304a699191a0780b99b4c3b9";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ joint-state-publisher python-qt-binding rclpy ];

  meta = {
    description = "This package contains a GUI tool for setting and publishing joint state values for a given URDF.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
