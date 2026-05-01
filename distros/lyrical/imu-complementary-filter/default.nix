
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, geometry-msgs, message-filters, rclcpp, sensor-msgs, std-msgs, tf2, tf2-ros }:
buildRosPackage {
  pname = "ros-lyrical-imu-complementary-filter";
  version = "2.2.2-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/imu_tools-release/archive/release/lyrical/imu_complementary_filter/2.2.2-3.tar.gz";
    name = "2.2.2-3.tar.gz";
    sha256 = "05369dceff2582fce0dc274b0608739ba53bf1585a467056e89b44841feea993";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake geometry-msgs message-filters rclcpp sensor-msgs std-msgs tf2 tf2-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Filter which fuses angular velocities, accelerations, and (optionally) magnetic readings from a generic IMU device into a quaternion to represent the orientation of the device wrt the global frame. Based on the algorithm by Roberto G. Valenti etal. described in the paper \"Keeping a Good Attitude: A Quaternion-Based Orientation Filter for IMUs and MARGs\" available at http://www.mdpi.com/1424-8220/15/8/19302 .";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
