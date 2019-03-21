
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rviz, qt5, roscpp }:
buildRosPackage {
  pname = "ros-melodic-rviz-imu-plugin";
  version = "1.2.0";

  src = fetchurl {
    url = https://github.com/uos-gbp/imu_tools-release/archive/release/melodic/rviz_imu_plugin/1.2.0-0.tar.gz;
    sha256 = "8611fe62e3a09de1147588b51946ff3d88a663ff412a6fa8d1199a929d4a54ef";
  };

  propagatedBuildInputs = [ roscpp rviz qt5.qtbase ];
  nativeBuildInputs = [ catkin roscpp rviz qt5.qtbase ];

  meta = {
    description = ''RVIZ plugin for IMU visualization'';
    #license = lib.licenses.BSD;
  };
}
