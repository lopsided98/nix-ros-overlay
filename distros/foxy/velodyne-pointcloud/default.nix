
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, angles, diagnostic-updater, geometry-msgs, libyamlcpp, message-filters, pcl, rclcpp, rclcpp-components, sensor-msgs, tf2, tf2-ros, velodyne-msgs }:
buildRosPackage {
  pname = "ros-foxy-velodyne-pointcloud";
  version = "2.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-drivers-gbp/velodyne-release/archive/release/foxy/velodyne_pointcloud/2.1.0-1.tar.gz";
    name = "2.1.0-1.tar.gz";
    sha256 = "cb9c8876d8f8f603c5cfcbc23c3370b044b6126285e5551c57c073fc1bb8a5d6";
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
