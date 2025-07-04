
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, geometry-msgs, message-filters, rclcpp, sensor-msgs, std-msgs, tf2, tf2-ros }:
buildRosPackage {
  pname = "ros-kilted-imu-complementary-filter";
  version = "2.2.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/imu_tools-release/archive/release/kilted/imu_complementary_filter/2.2.1-1.tar.gz";
    name = "2.2.1-1.tar.gz";
    sha256 = "3ad9ec1c3f1c067fc72549f821aa27693678f77a5e6d2b4346104bc59854f880";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake geometry-msgs message-filters rclcpp sensor-msgs std-msgs tf2 tf2-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Filter which fuses angular velocities, accelerations, and (optionally) magnetic readings from a generic IMU device into a quaternion to represent the orientation of the device wrt the global frame. Based on the algorithm by Roberto G. Valenti etal. described in the paper &quot;Keeping a Good Attitude: A Quaternion-Based Orientation Filter for IMUs and MARGs&quot; available at http://www.mdpi.com/1424-8220/15/8/19302 .";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
