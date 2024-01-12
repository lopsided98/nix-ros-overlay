
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, angles, diagnostic-updater, geometry-msgs, message-filters, pcl, rclcpp, rclcpp-components, sensor-msgs, tf2, tf2-ros, velodyne-msgs, yaml-cpp }:
buildRosPackage {
  pname = "ros-iron-velodyne-pointcloud";
  version = "2.3.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/velodyne-release/archive/release/iron/velodyne_pointcloud/2.3.0-3.tar.gz";
    name = "2.3.0-3.tar.gz";
    sha256 = "bfadefdbbbd0dfce67e455692c5b240e2fe2df811bc3a74aecfc4384259a8a42";
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
