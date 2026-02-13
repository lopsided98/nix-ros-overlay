
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, inverse-dynamics-solver, kdl-parser, orocos-kdl, pluginlib, rclcpp, ros-testing, ur-description }:
buildRosPackage {
  pname = "ros-humble-kdl-inverse-dynamics-solver";
  version = "1.0.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/inverse_dynamics_solver-release/archive/release/humble/kdl_inverse_dynamics_solver/1.0.4-1.tar.gz";
    name = "1.0.4-1.tar.gz";
    sha256 = "507366c497d7b13ab01274ed54bf34678211ef1b713f608abb2d6cbc2a66f5ba";
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
