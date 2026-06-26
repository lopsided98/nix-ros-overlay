
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, inverse-dynamics-solver, kdl-parser, orocos-kdl, pluginlib, rclcpp, ros-testing, ur-description }:
buildRosPackage {
  pname = "ros-lyrical-kdl-inverse-dynamics-solver";
  version = "3.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/inverse_dynamics_solver-release/archive/release/lyrical/kdl_inverse_dynamics_solver/3.0.0-1.tar.gz";
    name = "3.0.0-1.tar.gz";
    sha256 = "65ed1212c25b0e147c7c0c22485dc5391fd4282a47fa7a26c09645504db29737";
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
