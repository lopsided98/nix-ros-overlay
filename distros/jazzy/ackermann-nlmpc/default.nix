
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ackermann-msgs, ackermann-nlmpc-msgs, ament-pep257, geometry-msgs, nav-msgs, python3Packages, std-msgs }:
buildRosPackage {
  pname = "ros-jazzy-ackermann-nlmpc";
  version = "1.0.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ackmerann_nlmpc-release/archive/release/jazzy/ackermann_nlmpc/1.0.3-1.tar.gz";
    name = "1.0.3-1.tar.gz";
    sha256 = "0dcb1a4787ece0e8a88edae11952626249c86b1be95deb86f1417000e56de73e";
  };

  buildType = "ament_python";
  checkInputs = [ ament-pep257 python3Packages.pytest ];
  propagatedBuildInputs = [ ackermann-msgs ackermann-nlmpc-msgs geometry-msgs nav-msgs std-msgs ];

  meta = {
    description = "Lightweight non-linear MPC controller for autonomous driving in 2D environments";
    license = with lib.licenses; [ gpl3Only ];
  };
}
