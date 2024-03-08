
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gtest, ament-cmake-ros, ament-lint-auto, ament-lint-common, diagnostic-msgs, diagnostic-updater, libpcap, rclcpp, rclcpp-components, tf2-ros, velodyne-msgs }:
buildRosPackage {
  pname = "ros-rolling-velodyne-driver";
  version = "2.3.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/velodyne-release/archive/release/rolling/velodyne_driver/2.3.0-3.tar.gz";
    name = "2.3.0-3.tar.gz";
    sha256 = "cf0e763cc4afca3c1cababb67d7c0d7c4be3e714b3f4d7e5c06889847c4b8927";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ diagnostic-msgs diagnostic-updater libpcap rclcpp rclcpp-components tf2-ros velodyne-msgs ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''ROS device driver for Velodyne 3D LIDARs.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
