
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, eigen, pluginlib, python, python3Packages, rclcpp, rosbag2-cpp, rosbag2-storage, rosbag2-storage-default-plugins, sensor-msgs, urdf }:
buildRosPackage {
  pname = "ros-rolling-inverse-dynamics-solver";
  version = "6.0.1-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/inverse_dynamics_solver-release/archive/release/rolling/inverse_dynamics_solver/6.0.1-3.tar.gz";
    name = "6.0.1-3.tar.gz";
    sha256 = "6009b5c3237c475d311f2af9dceb6b7728c5df9e9ac4b65692a206d0fe44cf83";
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
