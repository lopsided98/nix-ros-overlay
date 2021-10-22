
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, gazebo-dev, gazebo-msgs, gazebo-ros, rclcpp, sensor-msgs, tf2 }:
buildRosPackage {
  pname = "ros-foxy-velodyne-gazebo-plugins";
  version = "2.0.1-r1";

  src = fetchurl {
    url = "https://github.com/DataspeedInc-release/velodyne_simulator-release/archive/release/foxy/velodyne_gazebo_plugins/2.0.1-1.tar.gz";
    name = "2.0.1-1.tar.gz";
    sha256 = "133b902dd1174c7f3243222967bda7ed7adfceeca4d206fdc2ec9fdbafc2a26a";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ gazebo-dev gazebo-msgs gazebo-ros rclcpp sensor-msgs tf2 ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Gazebo plugin to provide simulated data from Velodyne laser scanners.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
