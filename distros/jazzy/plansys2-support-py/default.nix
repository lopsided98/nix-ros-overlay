
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-copyright, ament-flake8, ament-pep257, lifecycle-msgs, plansys2-msgs, python-cmake-module, python3Packages, rclpy }:
buildRosPackage {
  pname = "ros-jazzy-plansys2-support-py";
  version = "2.0.18-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_planning_system-release/archive/release/jazzy/plansys2_support_py/2.0.18-1.tar.gz";
    name = "2.0.18-1.tar.gz";
    sha256 = "fc523657c486463f8f612b482cd3f5f330a93ae37339e9363e8ca4223fd4e4b0";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake python-cmake-module ];
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 python3Packages.pytest ];
  propagatedBuildInputs = [ lifecycle-msgs plansys2-msgs rclpy ];
  nativeBuildInputs = [ ament-cmake python-cmake-module ];

  meta = {
    description = "This package contains modules for developing PlanSys components in Python";
    license = with lib.licenses; [ asl20 ];
  };
}
