
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, gazebo-dev, gazebo-msgs, gazebo-ros, rclcpp, sensor-msgs }:
buildRosPackage {
  pname = "ros-iron-velodyne-gazebo-plugins";
  version = "2.0.3-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/velodyne_simulator-release/archive/release/iron/velodyne_gazebo_plugins/2.0.3-3.tar.gz";
    name = "2.0.3-3.tar.gz";
    sha256 = "ad4a444fbb6ecc5486c41e36141c71d857150679612508c19e7e4584e5a270ae";
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
