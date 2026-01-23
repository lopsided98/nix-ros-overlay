
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, eigen, pluginlib, python, python3Packages, rclcpp, rosbag2-cpp, rosbag2-storage, rosbag2-storage-default-plugins, sensor-msgs, urdf }:
buildRosPackage {
  pname = "ros-jazzy-inverse-dynamics-solver";
  version = "2.0.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/inverse_dynamics_solver-release/archive/release/jazzy/inverse_dynamics_solver/2.0.2-1.tar.gz";
    name = "2.0.2-1.tar.gz";
    sha256 = "d2f8059e1a36ebce0cc1954975d818c88aed2c0ef3ad629eb5e5123e09a2ecfb";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ eigen pluginlib python python3Packages.matplotlib python3Packages.numpy python3Packages.tabulate rclcpp rosbag2-cpp rosbag2-storage rosbag2-storage-default-plugins sensor-msgs urdf ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "A library implementing an inverse dynamics solver for serial manipulators.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
