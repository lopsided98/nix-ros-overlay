
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-xmllint, launch-testing, launch-testing-ros, pythonPackages, rclpy, ros2topic, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-rolling-joint-state-publisher";
  version = "2.3.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/joint_state_publisher-release/archive/release/rolling/joint_state_publisher/2.3.0-2.tar.gz";
    name = "2.3.0-2.tar.gz";
    sha256 = "2d48d5c1fe8c43b9cf56bc078c111637a57f99d271890a5cbc536b60466c0669";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-xmllint launch-testing launch-testing-ros pythonPackages.pytest ros2topic ];
  propagatedBuildInputs = [ rclpy sensor-msgs std-msgs ];

  meta = {
    description = ''This package contains a tool for setting and publishing joint state values for a given URDF.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
