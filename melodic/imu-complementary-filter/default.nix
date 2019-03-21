
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake-modules, sensor-msgs, catkin, message-filters, roscpp, std-msgs, tf }:
buildRosPackage {
  pname = "ros-melodic-imu-complementary-filter";
  version = "1.2.0";

  src = fetchurl {
    url = https://github.com/uos-gbp/imu_tools-release/archive/release/melodic/imu_complementary_filter/1.2.0-0.tar.gz;
    sha256 = "c23c27697af1b9f37cc30cde2c65855eadd20cf0faa3264b2dfeaeeb54a915da";
  };

  propagatedBuildInputs = [ std-msgs sensor-msgs roscpp message-filters tf ];
  nativeBuildInputs = [ catkin cmake-modules std-msgs sensor-msgs tf message-filters roscpp ];

  meta = {
    description = ''Filter which fuses angular velocities, accelerations, and (optionally) magnetic readings from a generic IMU device into a quaternion to represent the orientation of the device wrt the global frame. Based on the algorithm by Roberto G. Valenti etal. described in the paper &quot;Keeping a Good Attitude: A Quaternion-Based Orientation Filter for IMUs and MARGs&quot; available at http://www.mdpi.com/1424-8220/15/8/19302 .'';
    #license = lib.licenses.BSD;
  };
}
