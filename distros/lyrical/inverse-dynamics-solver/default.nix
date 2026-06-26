
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, eigen, pluginlib, python3Packages, rclcpp, rosbag2-cpp, rosbag2-storage, rosbag2-storage-default-plugins, sensor-msgs, urdf }:
buildRosPackage {
  pname = "ros-lyrical-inverse-dynamics-solver";
  version = "3.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/inverse_dynamics_solver-release/archive/release/lyrical/inverse_dynamics_solver/3.0.0-1.tar.gz";
    name = "3.0.0-1.tar.gz";
    sha256 = "106487a47451491ec5f7496195e47f5d80fe8f1f492b2976ad1c6ab654920cf1";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ eigen pluginlib python3Packages.matplotlib python3Packages.numpy python3Packages.tabulate rclcpp rosbag2-cpp rosbag2-storage rosbag2-storage-default-plugins sensor-msgs urdf ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "A library implementing an inverse dynamics solver for serial manipulators.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
