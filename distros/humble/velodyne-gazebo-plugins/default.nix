
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, gazebo-dev, gazebo-msgs, gazebo-ros, rclcpp, sensor-msgs, tf2 }:
buildRosPackage {
  pname = "ros-humble-velodyne-gazebo-plugins";
  version = "2.0.2-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/velodyne_simulator-release/archive/release/humble/velodyne_gazebo_plugins/2.0.2-3.tar.gz";
    name = "2.0.2-3.tar.gz";
    sha256 = "51fe5a51d747b58246099c3df0a1fe2253b44ec5fd9a9c09350c068a4c3c490d";
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
