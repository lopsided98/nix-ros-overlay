
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, lifecycle-msgs, plansys2-msgs, python3Packages, rclpy }:
buildRosPackage {
  pname = "ros-lyrical-plansys2-support-py";
  version = "3.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_planning_system-release/archive/release/lyrical/plansys2_support_py/3.1.0-1.tar.gz";
    name = "3.1.0-1.tar.gz";
    sha256 = "59b5c2102713a3ae9588c1442d7330d1b186f20ea49632d534e63490f35df6fb";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 python3Packages.pytest ];
  propagatedBuildInputs = [ lifecycle-msgs plansys2-msgs rclpy ];

  meta = {
    description = "This package contains modules for developing PlanSys components in Python";
    license = with lib.licenses; [ asl20 ];
  };
}
