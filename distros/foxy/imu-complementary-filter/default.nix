
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, geometry-msgs, message-filters, rclcpp, sensor-msgs, std-msgs, tf2 }:
buildRosPackage {
  pname = "ros-foxy-imu-complementary-filter";
  version = "2.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/imu_tools-release/archive/release/foxy/imu_complementary_filter/2.0.1-1.tar.gz";
    name = "2.0.1-1.tar.gz";
    sha256 = "12ae63436ea1535e29758548a2187d71ca2f0ba02073e9039d2a92d2acb3adbc";
  };

  buildType = "ament_cmake";
  buildInputs = [ geometry-msgs message-filters rclcpp sensor-msgs std-msgs tf2 ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Filter which fuses angular velocities, accelerations, and (optionally) magnetic readings from a generic IMU device into a quaternion to represent the orientation of the device wrt the global frame. Based on the algorithm by Roberto G. Valenti etal. described in the paper &quot;Keeping a Good Attitude: A Quaternion-Based Orientation Filter for IMUs and MARGs&quot; available at http://www.mdpi.com/1424-8220/15/8/19302 .'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
