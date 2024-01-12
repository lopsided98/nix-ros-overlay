
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, joint-state-publisher, python-qt-binding, rclpy }:
buildRosPackage {
  pname = "ros-iron-joint-state-publisher-gui";
  version = "2.4.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/joint_state_publisher-release/archive/release/iron/joint_state_publisher_gui/2.4.0-1.tar.gz";
    name = "2.4.0-1.tar.gz";
    sha256 = "a8b897728b8b102576978ec80e7cfddac657ab6d3314b38c57462e1392832101";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ joint-state-publisher python-qt-binding rclpy ];

  meta = {
    description = ''This package contains a GUI tool for setting and publishing joint state values for a given URDF.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
