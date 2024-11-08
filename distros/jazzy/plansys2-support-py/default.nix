
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-copyright, ament-flake8, ament-pep257, lifecycle-msgs, plansys2-msgs, python-cmake-module, pythonPackages, rclpy }:
buildRosPackage {
  pname = "ros-jazzy-plansys2-support-py";
  version = "2.0.13-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_planning_system-release/archive/release/jazzy/plansys2_support_py/2.0.13-1.tar.gz";
    name = "2.0.13-1.tar.gz";
    sha256 = "8dd2e966f4687a2a0e43cea6c43f5be52606a9f71ddaa5683bc0b60fc1e6cb52";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake python-cmake-module ];
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ lifecycle-msgs plansys2-msgs rclpy ];
  nativeBuildInputs = [ ament-cmake python-cmake-module ];

  meta = {
    description = "This package contains modules for developing PlanSys components in Python";
    license = with lib.licenses; [ asl20 ];
  };
}
