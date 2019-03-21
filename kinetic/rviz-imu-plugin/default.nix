
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rviz, qt5, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-rviz-imu-plugin";
  version = "1.1.6";

  src = fetchurl {
    url = https://github.com/uos-gbp/imu_tools-release/archive/release/kinetic/rviz_imu_plugin/1.1.6-0.tar.gz;
    sha256 = "fd647aebf281f3ff8c653f0da0c84999bff918aa07fa2910ab83be3e7bb882ec";
  };

  propagatedBuildInputs = [ roscpp rviz qt5.qtbase ];
  nativeBuildInputs = [ catkin roscpp rviz qt5.qtbase ];

  meta = {
    description = ''RVIZ plugin for IMU visualization'';
    #license = lib.licenses.BSD;
  };
}
