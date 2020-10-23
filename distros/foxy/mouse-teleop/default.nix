
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, ament-xmllint, geometry-msgs, pythonPackages, rclpy }:
buildRosPackage {
  pname = "ros-foxy-mouse-teleop";
  version = "1.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/teleop_tools-release/archive/release/foxy/mouse_teleop/1.2.0-1.tar.gz";
    name = "1.2.0-1.tar.gz";
    sha256 = "ed4138c16c43b0f13c1fbbbdfa3141dc7bbc969580f3d786d5791a138ec7ea91";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 ament-xmllint ];
  propagatedBuildInputs = [ geometry-msgs pythonPackages.numpy pythonPackages.tkinter rclpy ];

  meta = {
    description = ''A mouse teleop tool for holonomic mobile robots.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
