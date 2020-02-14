
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, ament-xmllint, geometry-msgs, pythonPackages, rclpy }:
buildRosPackage {
  pname = "ros-dashing-mouse-teleop";
  version = "1.0.2-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/teleop_tools-release/archive/release/dashing/mouse_teleop/1.0.2-1.tar.gz";
    name = "1.0.2-1.tar.gz";
    sha256 = "babea784bc146a28073dbea6b81db017798770ff11791fa8d777a2bd31ee8013";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 ament-xmllint ];
  propagatedBuildInputs = [ geometry-msgs pythonPackages.numpy pythonPackages.tkinter rclpy ];

  meta = {
    description = ''A mouse teleop tool for holonomic mobile robots.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
