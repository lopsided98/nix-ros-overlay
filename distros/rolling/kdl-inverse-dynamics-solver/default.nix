
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, inverse-dynamics-solver, kdl-parser, orocos-kdl, pluginlib, rclcpp, ros-testing, ur-description }:
buildRosPackage {
  pname = "ros-rolling-kdl-inverse-dynamics-solver";
  version = "6.0.1-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/inverse_dynamics_solver-release/archive/release/rolling/kdl_inverse_dynamics_solver/6.0.1-2.tar.gz";
    name = "6.0.1-2.tar.gz";
    sha256 = "6ba9c1c9a8f0e1e107f38dcff3ff1b98903429c30c4593534dffd5b6b0245bc6";
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
