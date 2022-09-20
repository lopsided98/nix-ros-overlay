
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, gazebo-dev, gazebo-msgs, gazebo-ros, rclcpp, sensor-msgs, tf2 }:
buildRosPackage {
  pname = "ros-galactic-velodyne-gazebo-plugins";
  version = "2.0.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/velodyne_simulator-release/archive/release/galactic/velodyne_gazebo_plugins/2.0.2-1.tar.gz";
    name = "2.0.2-1.tar.gz";
    sha256 = "f111781e9bd1aa946f9ea2c1ab0fcc5a1e7f2a760e4e68a6ab5885e7f43b1c43";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ gazebo-dev gazebo-msgs gazebo-ros rclcpp sensor-msgs tf2 ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Gazebo plugin to provide simulated data from Velodyne laser scanners.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
