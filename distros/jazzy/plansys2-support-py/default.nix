
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-copyright, ament-flake8, ament-pep257, lifecycle-msgs, plansys2-msgs, python-cmake-module, pythonPackages, rclpy }:
buildRosPackage {
  pname = "ros-jazzy-plansys2-support-py";
  version = "2.0.14-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_planning_system-release/archive/release/jazzy/plansys2_support_py/2.0.14-1.tar.gz";
    name = "2.0.14-1.tar.gz";
    sha256 = "d8ef31e518771df4b7330b600a87e836d5652cd30a4c256ae420c593952da1e7";
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
