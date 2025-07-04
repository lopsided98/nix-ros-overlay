
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-copyright, ament-flake8, ament-pep257, lifecycle-msgs, plansys2-msgs, python-cmake-module, python3Packages, rclpy }:
buildRosPackage {
  pname = "ros-kilted-plansys2-support-py";
  version = "3.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_planning_system-release/archive/release/kilted/plansys2_support_py/3.0.1-1.tar.gz";
    name = "3.0.1-1.tar.gz";
    sha256 = "145e64f1679f31a37c4c2711b9c5cc35a0b4641338c83a54ded2eed2860d39f4";
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
