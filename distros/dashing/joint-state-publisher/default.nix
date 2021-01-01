
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-xmllint, pythonPackages, rclpy, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-dashing-joint-state-publisher";
  version = "2.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/joint_state_publisher-release/archive/release/dashing/joint_state_publisher/2.0.1-1.tar.gz";
    name = "2.0.1-1.tar.gz";
    sha256 = "3fc458f2b85fc39fb805e45e21278cf7f062f4adb0b497a00bfc9bc837225245";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-xmllint pythonPackages.pytest ];
  propagatedBuildInputs = [ rclpy sensor-msgs std-msgs ];

  meta = {
    description = ''This package contains a tool for setting and publishing joint state values for a given URDF.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
