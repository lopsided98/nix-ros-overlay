
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-index-cpp, ament-lint-auto, ament-lint-common, angles, diagnostic-updater, eigen, geometry-msgs, message-filters, pcl, rclcpp, rclcpp-components, sensor-msgs, tf2, tf2-ros, velodyne-msgs, yaml-cpp }:
buildRosPackage {
  pname = "ros-lyrical-velodyne-pointcloud";
  version = "2.5.1-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/velodyne-release/archive/release/lyrical/velodyne_pointcloud/2.5.1-3.tar.gz";
    name = "2.5.1-3.tar.gz";
    sha256 = "03dfe025cb484a112b4040eb37a2f343e7131432a4ee955ab9fea0a8031b2465";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ament-index-cpp ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ angles diagnostic-updater eigen geometry-msgs message-filters pcl rclcpp rclcpp-components sensor-msgs tf2 tf2-ros velodyne-msgs yaml-cpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Point cloud conversions for Velodyne 3D LIDARs.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
