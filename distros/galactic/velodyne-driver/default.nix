
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gtest, ament-cmake-ros, ament-lint-auto, ament-lint-common, diagnostic-msgs, diagnostic-updater, libpcap, rclcpp, rclcpp-components, tf2-ros, velodyne-msgs }:
buildRosPackage {
  pname = "ros-galactic-velodyne-driver";
  version = "2.1.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-drivers-gbp/velodyne-release/archive/release/galactic/velodyne_driver/2.1.1-1.tar.gz";
    name = "2.1.1-1.tar.gz";
    sha256 = "f076ca69cdc5a951e016691768f0e961d2d6216151738c2678fee52a1e271fb4";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ diagnostic-msgs diagnostic-updater libpcap rclcpp rclcpp-components tf2-ros velodyne-msgs ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''ROS device driver for Velodyne 3D LIDARs.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
