
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, ament-xmllint, geometry-msgs, pythonPackages, rclpy }:
buildRosPackage {
  pname = "ros-eloquent-mouse-teleop";
  version = "1.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/teleop_tools-release/archive/release/eloquent/mouse_teleop/1.1.0-1.tar.gz";
    name = "1.1.0-1.tar.gz";
    sha256 = "cbbe265244a29107715821429467d22d7eb6102f3503f3938b15096bd0846c22";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 ament-xmllint ];
  propagatedBuildInputs = [ geometry-msgs pythonPackages.numpy pythonPackages.tkinter rclpy ];

  meta = {
    description = ''A mouse teleop tool for holonomic mobile robots.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
