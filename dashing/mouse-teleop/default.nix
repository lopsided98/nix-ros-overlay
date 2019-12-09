
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, geometry-msgs, ament-copyright, pythonPackages, ament-xmllint, ament-pep257, rclpy, ament-flake8 }:
buildRosPackage {
  pname = "ros-dashing-mouse-teleop";
  version = "1.0.1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/teleop_tools-release/archive/release/dashing/mouse_teleop/1.0.1-0.tar.gz";
    name = "1.0.1-0.tar.gz";
    sha256 = "9230fff0302bc592e4091435c1bd49a5f7ae38d3fa363a1c1acd5ed5127f7674";
  };

  buildType = "ament_python";
  checkInputs = [ ament-xmllint ament-pep257 ament-flake8 ament-copyright ];
  propagatedBuildInputs = [ pythonPackages.numpy rclpy geometry-msgs pythonPackages.tkinter ];

  meta = {
    description = ''A mouse teleop tool for holonomic mobile robots.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
