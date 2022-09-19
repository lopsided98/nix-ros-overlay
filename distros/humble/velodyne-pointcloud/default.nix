
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, angles, diagnostic-updater, geometry-msgs, libyamlcpp, message-filters, pcl, rclcpp, rclcpp-components, sensor-msgs, tf2, tf2-ros, velodyne-msgs }:
buildRosPackage {
  pname = "ros-humble-velodyne-pointcloud";
  version = "2.3.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/velodyne-release/archive/release/humble/velodyne_pointcloud/2.3.0-1.tar.gz";
    name = "2.3.0-1.tar.gz";
    sha256 = "2a84eaaf7b0435550cc89b4e8624f63477a071ee82bd375b8d8b345e565280f7";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ angles diagnostic-updater geometry-msgs libyamlcpp message-filters pcl rclcpp rclcpp-components sensor-msgs tf2 tf2-ros velodyne-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Point cloud conversions for Velodyne 3D LIDARs.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
