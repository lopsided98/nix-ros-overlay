
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, inverse-dynamics-solver, kdl-parser, orocos-kdl, pluginlib, rclcpp, ros-testing, ur-description }:
buildRosPackage {
  pname = "ros-rolling-kdl-inverse-dynamics-solver";
  version = "6.0.1-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/inverse_dynamics_solver-release/archive/release/rolling/kdl_inverse_dynamics_solver/6.0.1-3.tar.gz";
    name = "6.0.1-3.tar.gz";
    sha256 = "5506d0ab7052dc6b64cf24b3abb44e3ff0e27dc108951bafa77efab2a1c03805";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common rclcpp ros-testing ];
  propagatedBuildInputs = [ inverse-dynamics-solver kdl-parser orocos-kdl pluginlib rclcpp ur-description ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "A KDL-based library implementing an inverse dynamics solver for simulated robots.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
