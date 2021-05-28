
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-xmllint, launch-testing, launch-testing-ros, pythonPackages, rclpy, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-galactic-joint-state-publisher";
  version = "2.2.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/joint_state_publisher-release/archive/release/galactic/joint_state_publisher/2.2.0-3.tar.gz";
    name = "2.2.0-3.tar.gz";
    sha256 = "e7b7cc65ad235f54a82563077113676508176a8b83dbba12b10255ea7522d8c9";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-xmllint launch-testing launch-testing-ros pythonPackages.pytest ];
  propagatedBuildInputs = [ rclpy sensor-msgs std-msgs ];

  meta = {
    description = ''This package contains a tool for setting and publishing joint state values for a given URDF.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
