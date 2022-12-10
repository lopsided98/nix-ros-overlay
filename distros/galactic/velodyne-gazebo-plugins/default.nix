
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, gazebo-dev, gazebo-msgs, gazebo-ros, rclcpp, sensor-msgs }:
buildRosPackage {
  pname = "ros-galactic-velodyne-gazebo-plugins";
  version = "2.0.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/velodyne_simulator-release/archive/release/galactic/velodyne_gazebo_plugins/2.0.3-1.tar.gz";
    name = "2.0.3-1.tar.gz";
    sha256 = "40f87a24f409bc3577c0bde33c53e53596a2f3f743e9fc1f04c106783759fa82";
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
