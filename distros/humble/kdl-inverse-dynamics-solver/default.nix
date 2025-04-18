
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, franka-description, inverse-dynamics-solver, kdl-parser, pluginlib, rclcpp, ros-testing, ur-description }:
buildRosPackage {
  pname = "ros-humble-kdl-inverse-dynamics-solver";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/inverse_dynamics_solver-release/archive/release/humble/kdl_inverse_dynamics_solver/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "0cc8b791369446bfc84d139ba94f025848db8ee0af0961d6ed67350f8490cba7";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common rclcpp ros-testing ];
  propagatedBuildInputs = [ franka-description inverse-dynamics-solver kdl-parser pluginlib ur-description ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "A KDL-based library implementing an inverse dynamics solver for simulated robots.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
