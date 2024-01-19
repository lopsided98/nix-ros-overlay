
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, gazebo-dev, gazebo-msgs, gazebo-ros, rclcpp, sensor-msgs }:
buildRosPackage {
  pname = "ros-rolling-velodyne-gazebo-plugins";
  version = "2.0.3-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/velodyne_simulator-release/archive/release/rolling/velodyne_gazebo_plugins/2.0.3-2.tar.gz";
    name = "2.0.3-2.tar.gz";
    sha256 = "dba2dcdbf3f0a73db65a2c739c44260be775a1c406fa5eec721ac1c78ad7e139";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ gazebo-dev gazebo-msgs gazebo-ros rclcpp sensor-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Gazebo plugin to provide simulated data from Velodyne laser scanners.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
