
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, eigen, pluginlib, python, python3Packages, rclcpp, rosbag2-cpp, rosbag2-storage, rosbag2-storage-default-plugins, sensor-msgs, urdf }:
buildRosPackage {
  pname = "ros-humble-inverse-dynamics-solver";
  version = "1.0.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/inverse_dynamics_solver-release/archive/release/humble/inverse_dynamics_solver/1.0.3-1.tar.gz";
    name = "1.0.3-1.tar.gz";
    sha256 = "6e0503fb6394aa541bc1f7344ce04e47d1c07f8c0cd67183b55c85037165b094";
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
