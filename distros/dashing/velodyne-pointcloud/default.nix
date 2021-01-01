
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, angles, diagnostic-updater, geometry-msgs, libyamlcpp, message-filters, pcl, rclcpp, rclcpp-components, sensor-msgs, tf2, tf2-ros, velodyne-msgs }:
buildRosPackage {
  pname = "ros-dashing-velodyne-pointcloud";
  version = "2.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-drivers-gbp/velodyne-release/archive/release/dashing/velodyne_pointcloud/2.0.0-1.tar.gz";
    name = "2.0.0-1.tar.gz";
    sha256 = "eb01118bdb950dc9aa181d8147d4a51fb3d845be6a7b0aa27568ff4f74e8bc80";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ angles diagnostic-updater geometry-msgs libyamlcpp message-filters pcl rclcpp rclcpp-components sensor-msgs tf2 tf2-ros velodyne-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Point cloud conversions for Velodyne 3D LIDARs.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
