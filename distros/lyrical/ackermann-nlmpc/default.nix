
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ackermann-msgs, ackermann-nlmpc-msgs, ament-pep257, geometry-msgs, nav-msgs, python3Packages, std-msgs }:
buildRosPackage {
  pname = "ros-lyrical-ackermann-nlmpc";
  version = "1.0.3-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ackmerann_nlmpc-release/archive/release/lyrical/ackermann_nlmpc/1.0.3-3.tar.gz";
    name = "1.0.3-3.tar.gz";
    sha256 = "4144856a67023fa5ca9749db6ca995adfb89a08b30cf395aa38c169ff9f2b7c8";
  };

  buildType = "ament_python";
  checkInputs = [ ament-pep257 python3Packages.pytest ];
  propagatedBuildInputs = [ ackermann-msgs ackermann-nlmpc-msgs geometry-msgs nav-msgs std-msgs ];

  meta = {
    description = "Lightweight non-linear MPC controller for autonomous driving in 2D environments";
    license = with lib.licenses; [ gpl3Only ];
  };
}
