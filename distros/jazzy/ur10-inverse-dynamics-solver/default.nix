
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, inverse-dynamics-solver, pluginlib, rclcpp, ros-testing, rosbag2-cpp, rosbag2-storage, rosbag2-storage-default-plugins, trajectory-msgs, ur-description }:
buildRosPackage {
  pname = "ros-jazzy-ur10-inverse-dynamics-solver";
  version = "2.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/inverse_dynamics_solver-release/archive/release/jazzy/ur10_inverse_dynamics_solver/2.0.0-1.tar.gz";
    name = "2.0.0-1.tar.gz";
    sha256 = "529d8dfd1c22b4af0583ffad4305d11154a26365c78a7151a5d7d846cad3439d";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common rclcpp ros-testing rosbag2-cpp rosbag2-storage rosbag2-storage-default-plugins trajectory-msgs ];
  propagatedBuildInputs = [ inverse-dynamics-solver pluginlib ur-description ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "A C++ library implementing the inverse dynamics solver for the UR10 real robot.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
