
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, gazebo-dev, gazebo-msgs, gazebo-ros, rclcpp, sensor-msgs }:
buildRosPackage {
  pname = "ros-humble-velodyne-gazebo-plugins";
  version = "2.0.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/velodyne_simulator-release/archive/release/humble/velodyne_gazebo_plugins/2.0.3-1.tar.gz";
    name = "2.0.3-1.tar.gz";
    sha256 = "ef8832b9dbd976c159da2efbdd62f55478131ce9ac770538f07b617bb664f10a";
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
