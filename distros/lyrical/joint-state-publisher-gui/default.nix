
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, ament-xmllint, joint-state-publisher, python-qt-binding, python3Packages, rclpy }:
buildRosPackage {
  pname = "ros-lyrical-joint-state-publisher-gui";
  version = "2.4.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/joint_state_publisher-release/archive/release/lyrical/joint_state_publisher_gui/2.4.3-1.tar.gz";
    name = "2.4.3-1.tar.gz";
    sha256 = "791a052f27f9bc03031d318db67393b91c21613d86fe5b79cf43b972574a218c";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 ament-xmllint python3Packages.pytest ];
  propagatedBuildInputs = [ joint-state-publisher python-qt-binding rclpy ];

  meta = {
    description = "This package contains a GUI tool for setting and publishing joint state values for a given URDF.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
