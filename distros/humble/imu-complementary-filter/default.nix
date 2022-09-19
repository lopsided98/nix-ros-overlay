
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, geometry-msgs, message-filters, rclcpp, sensor-msgs, std-msgs, tf2, tf2-ros }:
buildRosPackage {
  pname = "ros-humble-imu-complementary-filter";
  version = "2.1.1-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/imu_tools-release/archive/release/humble/imu_complementary_filter/2.1.1-2.tar.gz";
    name = "2.1.1-2.tar.gz";
    sha256 = "970465a940e67f46148fe7a5a95f0c4b2c54316ac3a1f254c14c1e3f6717e60d";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake geometry-msgs message-filters rclcpp sensor-msgs std-msgs tf2 tf2-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Filter which fuses angular velocities, accelerations, and (optionally) magnetic readings from a generic IMU device into a quaternion to represent the orientation of the device wrt the global frame. Based on the algorithm by Roberto G. Valenti etal. described in the paper &quot;Keeping a Good Attitude: A Quaternion-Based Orientation Filter for IMUs and MARGs&quot; available at http://www.mdpi.com/1424-8220/15/8/19302 .'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
