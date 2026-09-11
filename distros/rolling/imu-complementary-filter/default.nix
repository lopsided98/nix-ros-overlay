
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, geometry-msgs, message-filters, rclcpp, sensor-msgs, std-msgs, tf2, tf2-ros }:
buildRosPackage {
  pname = "ros-rolling-imu-complementary-filter";
  version = "2.2.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/imu_tools-release/archive/release/rolling/imu_complementary_filter/2.2.5-1.tar.gz";
    name = "2.2.5-1.tar.gz";
    sha256 = "726eb24b0df34cefa4fdc5eff546d2a03ee5fcaa31e1ffcc6d966f9d388bf550";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake geometry-msgs message-filters rclcpp sensor-msgs std-msgs tf2 tf2-ros ];
  checkInputs = [ ament-cmake-gtest ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Filter which fuses angular velocities, accelerations, and (optionally) magnetic readings from a generic IMU device into a quaternion to represent the orientation of the device wrt the global frame. Based on the algorithm by Roberto G. Valenti etal. described in the paper \"Keeping a Good Attitude: A Quaternion-Based Orientation Filter for IMUs and MARGs\" available at http://www.mdpi.com/1424-8220/15/8/19302 .";
    license = with lib.licenses; [ bsd3 ];
  };
}
