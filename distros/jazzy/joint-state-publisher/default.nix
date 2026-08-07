
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, ament-xmllint, launch-testing, launch-testing-ros, python3Packages, rclpy, ros2topic, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-jazzy-joint-state-publisher";
  version = "2.4.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/joint_state_publisher-release/archive/release/jazzy/joint_state_publisher/2.4.3-1.tar.gz";
    name = "2.4.3-1.tar.gz";
    sha256 = "dc08b3e2332bd55c502b822b803c815e78b76951eff86982280a35e668a3e63c";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 ament-xmllint launch-testing launch-testing-ros python3Packages.pytest ros2topic ];
  propagatedBuildInputs = [ python3Packages.packaging rclpy sensor-msgs std-msgs ];

  meta = {
    description = "This package contains a tool for setting and publishing joint state values for a given URDF.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
