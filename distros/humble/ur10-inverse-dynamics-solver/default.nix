
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, inverse-dynamics-solver, pluginlib, rclcpp, ros-testing, rosbag2-cpp, rosbag2-storage, rosbag2-storage-default-plugins, trajectory-msgs, ur-description }:
buildRosPackage {
  pname = "ros-humble-ur10-inverse-dynamics-solver";
  version = "1.0.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/inverse_dynamics_solver-release/archive/release/humble/ur10_inverse_dynamics_solver/1.0.4-1.tar.gz";
    name = "1.0.4-1.tar.gz";
    sha256 = "e55009869c567b57bd23434f8c67769161fce8b1fe5e64ce6b6f4f01a7b7212e";
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
