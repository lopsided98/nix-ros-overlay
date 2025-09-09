
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-xmllint, launch-testing, launch-testing-ros, python3Packages, rclpy, ros2topic, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-kilted-joint-state-publisher";
  version = "2.4.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/joint_state_publisher-release/archive/release/kilted/joint_state_publisher/2.4.0-3.tar.gz";
    name = "2.4.0-3.tar.gz";
    sha256 = "8b96a18787e7a1243ddd51aa12625cfde1bbfb6a48a5bcc431eae58a91f3bc6a";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-xmllint launch-testing launch-testing-ros python3Packages.pytest ros2topic ];
  propagatedBuildInputs = [ rclpy sensor-msgs std-msgs ];

  meta = {
    description = "This package contains a tool for setting and publishing joint state values for a given URDF.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
