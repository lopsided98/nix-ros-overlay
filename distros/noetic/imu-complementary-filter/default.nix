
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake-modules, geometry-msgs, message-filters, nodelet, pluginlib, roscpp, sensor-msgs, std-msgs, tf }:
buildRosPackage {
  pname = "ros-noetic-imu-complementary-filter";
  version = "1.2.7-r1";

  src = fetchurl {
    url = "https://github.com/uos-gbp/imu_tools-release/archive/release/noetic/imu_complementary_filter/1.2.7-1.tar.gz";
    name = "1.2.7-1.tar.gz";
    sha256 = "e1d3d3cd3fb2228536edb24be3ee3b99747a533c53990199fb011d7226b48b11";
  };

  buildType = "catkin";
  buildInputs = [ catkin cmake-modules ];
  propagatedBuildInputs = [ geometry-msgs message-filters nodelet pluginlib roscpp sensor-msgs std-msgs tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "Filter which fuses angular velocities, accelerations, and (optionally) magnetic readings from a generic IMU device into a quaternion to represent the orientation of the device wrt the global frame. Based on the algorithm by Roberto G. Valenti etal. described in the paper &quot;Keeping a Good Attitude: A Quaternion-Based Orientation Filter for IMUs and MARGs&quot; available at http://www.mdpi.com/1424-8220/15/8/19302 .";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
