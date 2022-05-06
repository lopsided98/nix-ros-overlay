
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, geometry-msgs, message-filters, rclcpp, sensor-msgs, std-msgs, tf2 }:
buildRosPackage {
  pname = "ros-galactic-imu-complementary-filter";
  version = "2.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/imu_tools-release/archive/release/galactic/imu_complementary_filter/2.0.1-1.tar.gz";
    name = "2.0.1-1.tar.gz";
    sha256 = "0124e2d1a244675bec830e3fd35b1d79c8896657cacfc6618cecc708ef5f2ea9";
  };

  buildType = "ament_cmake";
  buildInputs = [ geometry-msgs message-filters rclcpp sensor-msgs std-msgs tf2 ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Filter which fuses angular velocities, accelerations, and (optionally) magnetic readings from a generic IMU device into a quaternion to represent the orientation of the device wrt the global frame. Based on the algorithm by Roberto G. Valenti etal. described in the paper &quot;Keeping a Good Attitude: A Quaternion-Based Orientation Filter for IMUs and MARGs&quot; available at http://www.mdpi.com/1424-8220/15/8/19302 .'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
