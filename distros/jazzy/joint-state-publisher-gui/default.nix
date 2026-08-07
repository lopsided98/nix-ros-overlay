
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, ament-xmllint, joint-state-publisher, python-qt-binding, python3Packages, rclpy }:
buildRosPackage {
  pname = "ros-jazzy-joint-state-publisher-gui";
  version = "2.4.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/joint_state_publisher-release/archive/release/jazzy/joint_state_publisher_gui/2.4.3-1.tar.gz";
    name = "2.4.3-1.tar.gz";
    sha256 = "fa83bd0fb88a35fdbff863a661880b207f383ed9e23ac0fb7f5b9b82a139dd1e";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 ament-xmllint python3Packages.pytest ];
  propagatedBuildInputs = [ joint-state-publisher python-qt-binding rclpy ];

  meta = {
    description = "This package contains a GUI tool for setting and publishing joint state values for a given URDF.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
