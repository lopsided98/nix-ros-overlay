
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, message-filters, std-msgs, cmake-modules, tf, catkin, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-imu-complementary-filter";
  version = "1.1.7-r1";

  src = fetchurl {
    url = "https://github.com/uos-gbp/imu_tools-release/archive/release/kinetic/imu_complementary_filter/1.1.7-1.tar.gz";
    name = "1.1.7-1.tar.gz";
    sha256 = "6df5f7b9dd5f341ce6fda5376a9723a6d8586a1b68951d9a382a97056b2426c7";
  };

  buildType = "catkin";
  buildInputs = [ sensor-msgs message-filters std-msgs cmake-modules tf roscpp ];
  propagatedBuildInputs = [ sensor-msgs message-filters std-msgs tf roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Filter which fuses angular velocities, accelerations, and (optionally) magnetic readings from a generic IMU device into a quaternion to represent the orientation of the device wrt the global frame. Based on the algorithm by Roberto G. Valenti etal. described in the paper &quot;Keeping a Good Attitude: A Quaternion-Based Orientation Filter for IMUs and MARGs&quot; available at http://www.mdpi.com/1424-8220/15/8/19302 .'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
