
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, angles, diagnostic-updater, geometry-msgs, message-filters, pcl, rclcpp, rclcpp-components, sensor-msgs, tf2, tf2-ros, velodyne-msgs, yaml-cpp }:
buildRosPackage {
  pname = "ros-rolling-velodyne-pointcloud";
  version = "2.3.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/velodyne-release/archive/release/rolling/velodyne_pointcloud/2.3.0-3.tar.gz";
    name = "2.3.0-3.tar.gz";
    sha256 = "e6f50e6ac5030a6dab382870295c9e90cccf277b624d7d9ae1fd499798646638";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ angles diagnostic-updater geometry-msgs message-filters pcl rclcpp rclcpp-components sensor-msgs tf2 tf2-ros velodyne-msgs yaml-cpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Point cloud conversions for Velodyne 3D LIDARs.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
