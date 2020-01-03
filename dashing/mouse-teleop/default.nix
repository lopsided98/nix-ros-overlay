
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, ament-xmllint, geometry-msgs, pythonPackages, rclpy }:
buildRosPackage {
  pname = "ros-dashing-mouse-teleop";
  version = "1.0.1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/teleop_tools-release/archive/release/dashing/mouse_teleop/1.0.1-0.tar.gz";
    name = "1.0.1-0.tar.gz";
    sha256 = "9230fff0302bc592e4091435c1bd49a5f7ae38d3fa363a1c1acd5ed5127f7674";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 ament-xmllint ];
  propagatedBuildInputs = [ geometry-msgs pythonPackages.numpy pythonPackages.tkinter rclpy ];

  meta = {
    description = ''A mouse teleop tool for holonomic mobile robots.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
