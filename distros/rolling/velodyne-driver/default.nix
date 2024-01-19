
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gtest, ament-cmake-ros, ament-lint-auto, ament-lint-common, diagnostic-msgs, diagnostic-updater, libpcap, rclcpp, rclcpp-components, tf2-ros, velodyne-msgs }:
buildRosPackage {
  pname = "ros-rolling-velodyne-driver";
  version = "2.3.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/velodyne-release/archive/release/rolling/velodyne_driver/2.3.0-2.tar.gz";
    name = "2.3.0-2.tar.gz";
    sha256 = "dd3bc284aa512b1b8dd068cbb413de014b8e2f77a2ea5ccfaba41d9d26a80b55";
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
