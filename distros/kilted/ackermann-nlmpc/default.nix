
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ackermann-msgs, ackermann-nlmpc-msgs, ament-pep257, geometry-msgs, nav-msgs, python3Packages, std-msgs }:
buildRosPackage {
  pname = "ros-kilted-ackermann-nlmpc";
  version = "1.0.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ackmerann_nlmpc-release/archive/release/kilted/ackermann_nlmpc/1.0.2-1.tar.gz";
    name = "1.0.2-1.tar.gz";
    sha256 = "5db78777717bd64c88d4217c960b54acff12cf162336be55939c375b5cc491a1";
  };

  buildType = "ament_python";
  checkInputs = [ ament-pep257 python3Packages.pytest ];
  propagatedBuildInputs = [ ackermann-msgs ackermann-nlmpc-msgs geometry-msgs nav-msgs std-msgs ];

  meta = {
    description = "Lightweight non-linear MPC controller for autonomous driving in 2D environments";
    license = with lib.licenses; [ gpl3Only ];
  };
}
