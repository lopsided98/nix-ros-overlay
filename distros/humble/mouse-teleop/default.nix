
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, ament-xmllint, geometry-msgs, python3Packages, rclpy }:
buildRosPackage {
  pname = "ros-humble-mouse-teleop";
  version = "1.3.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/teleop_tools-release/archive/release/humble/mouse_teleop/1.3.0-2.tar.gz";
    name = "1.3.0-2.tar.gz";
    sha256 = "2527c790d59b74852b6ece36904baa3f15090003b59ff18177ff0c95e548e2d4";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 ament-xmllint ];
  propagatedBuildInputs = [ geometry-msgs python3Packages.numpy python3Packages.tkinter rclpy ];

  meta = {
    description = ''A mouse teleop tool for holonomic mobile robots.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
