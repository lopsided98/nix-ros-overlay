
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-xmllint, launch-testing, launch-testing-ros, pythonPackages, rclpy, ros2topic, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-rolling-joint-state-publisher";
  version = "2.3.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/joint_state_publisher-release/archive/release/rolling/joint_state_publisher/2.3.0-1.tar.gz";
    name = "2.3.0-1.tar.gz";
    sha256 = "407aa8a3c76ffd64ad1a21a8b37d941dbef688ae0cf1b50573ca3b982d5402fa";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-xmllint launch-testing launch-testing-ros pythonPackages.pytest ros2topic ];
  propagatedBuildInputs = [ rclpy sensor-msgs std-msgs ];

  meta = {
    description = ''This package contains a tool for setting and publishing joint state values for a given URDF.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
