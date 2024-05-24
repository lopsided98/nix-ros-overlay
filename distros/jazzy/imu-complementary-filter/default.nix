
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, geometry-msgs, message-filters, rclcpp, sensor-msgs, std-msgs, tf2, tf2-ros }:
buildRosPackage {
  pname = "ros-jazzy-imu-complementary-filter";
  version = "2.1.3-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/imu_tools-release/archive/release/jazzy/imu_complementary_filter/2.1.3-4.tar.gz";
    name = "2.1.3-4.tar.gz";
    sha256 = "26ad0936a0c7402b8db39d848f8f09b1e9b592b3f50ff93612f2bdf19fdcff2d";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake geometry-msgs message-filters rclcpp sensor-msgs std-msgs tf2 tf2-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Filter which fuses angular velocities, accelerations, and (optionally) magnetic readings from a generic IMU device into a quaternion to represent the orientation of the device wrt the global frame. Based on the algorithm by Roberto G. Valenti etal. described in the paper &quot;Keeping a Good Attitude: A Quaternion-Based Orientation Filter for IMUs and MARGs&quot; available at http://www.mdpi.com/1424-8220/15/8/19302 .";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
