
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, angles, diagnostic-updater, geometry-msgs, libyamlcpp, message-filters, pcl, rclcpp, rclcpp-components, sensor-msgs, tf2, tf2-ros, velodyne-msgs }:
buildRosPackage {
  pname = "ros-galactic-velodyne-pointcloud";
  version = "2.1.1-r2";

  src = fetchurl {
    url = "https://github.com/ros-drivers-gbp/velodyne-release/archive/release/galactic/velodyne_pointcloud/2.1.1-2.tar.gz";
    name = "2.1.1-2.tar.gz";
    sha256 = "5b3ef4c7a62a21e3f98bbf1aef48b7b59f688c62fde5d5125cdbfd116269faab";
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
