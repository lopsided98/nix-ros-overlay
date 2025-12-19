
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, lifecycle-msgs, plansys2-msgs, python3Packages, rclpy }:
buildRosPackage {
  pname = "ros-kilted-plansys2-support-py";
  version = "3.0.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_planning_system-release/archive/release/kilted/plansys2_support_py/3.0.2-1.tar.gz";
    name = "3.0.2-1.tar.gz";
    sha256 = "ce929f8c0a5c2a76485333b687a2fc7c865031cab07dbc1e2fd93abca0987825";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 python3Packages.pytest ];
  propagatedBuildInputs = [ lifecycle-msgs plansys2-msgs rclpy ];

  meta = {
    description = "This package contains modules for developing PlanSys components in Python";
    license = with lib.licenses; [ asl20 ];
  };
}
