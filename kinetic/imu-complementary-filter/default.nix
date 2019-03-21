
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake-modules, sensor-msgs, catkin, message-filters, roscpp, std-msgs, tf }:
buildRosPackage {
  pname = "ros-kinetic-imu-complementary-filter";
  version = "1.1.6";

  src = fetchurl {
    url = https://github.com/uos-gbp/imu_tools-release/archive/release/kinetic/imu_complementary_filter/1.1.6-0.tar.gz;
    sha256 = "805fb81a11db5bcaaaf7cbcf7526665488fb63b2a78b6fad205b5505f4c34b77";
  };

  propagatedBuildInputs = [ std-msgs sensor-msgs roscpp message-filters tf ];
  nativeBuildInputs = [ catkin cmake-modules std-msgs sensor-msgs tf message-filters roscpp ];

  meta = {
    description = ''Filter which fuses angular velocities, accelerations, and (optionally) magnetic readings from a generic IMU device into a quaternion to represent the orientation of the device wrt the global frame. Based on the algorithm by Roberto G. Valenti etal. described in the paper &quot;Keeping a Good Attitude: A Quaternion-Based Orientation Filter for IMUs and MARGs&quot; available at http://www.mdpi.com/1424-8220/15/8/19302 .'';
    #license = lib.licenses.BSD;
  };
}
