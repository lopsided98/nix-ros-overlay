
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-index-python, ament-pep257, lifecycle-msgs, plansys2-bringup, plansys2-msgs, plansys2-pddl-parser, python3Packages, rclpy, ros2launch, std-msgs }:
buildRosPackage {
  pname = "ros-kilted-plansys2-support-py";
  version = "4.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_planning_system-release/archive/release/kilted/plansys2_support_py/4.0.0-1.tar.gz";
    name = "4.0.0-1.tar.gz";
    sha256 = "bd0ea59ec4374471fb01a211d7a13f2d38ebf590baa4e9a202a8a77905fb015d";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-index-python ament-pep257 plansys2-bringup plansys2-pddl-parser python3Packages.pytest ros2launch std-msgs ];
  propagatedBuildInputs = [ lifecycle-msgs plansys2-msgs rclpy ];

  meta = {
    description = "This package contains modules for developing PlanSys components in Python";
    license = with lib.licenses; [ asl20 ];
  };
}
