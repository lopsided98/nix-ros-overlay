
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, ament-xmllint, launch-testing, launch-testing-ros, python3Packages, rclpy, ros2topic, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-lyrical-joint-state-publisher";
  version = "2.4.1-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/joint_state_publisher-release/archive/release/lyrical/joint_state_publisher/2.4.1-3.tar.gz";
    name = "2.4.1-3.tar.gz";
    sha256 = "3710339cc147914aa0041ffd7991ff6deff82ea04bbcf87eead48e88b5e07aa0";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 ament-xmllint launch-testing launch-testing-ros python3Packages.pytest ros2topic ];
  propagatedBuildInputs = [ python3Packages.packaging rclpy sensor-msgs std-msgs ];

  meta = {
    description = "This package contains a tool for setting and publishing joint state values for a given URDF.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
