
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, inverse-dynamics-solver, pluginlib, rclcpp, ros-testing, rosbag2-cpp, rosbag2-storage, rosbag2-storage-default-plugins, trajectory-msgs, ur-description }:
buildRosPackage {
  pname = "ros-rolling-ur10-inverse-dynamics-solver";
  version = "6.0.1-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/inverse_dynamics_solver-release/archive/release/rolling/ur10_inverse_dynamics_solver/6.0.1-2.tar.gz";
    name = "6.0.1-2.tar.gz";
    sha256 = "384d076c34d69f77abe00b1ad9fe588c82f9ffd31131eb1503a7b3bcbfed7975";
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
