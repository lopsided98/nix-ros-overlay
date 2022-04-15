
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, qt5, roscpp, rviz }:
buildRosPackage {
  pname = "ros-melodic-rviz-imu-plugin";
  version = "1.2.4-r1";

  src = fetchurl {
    url = "https://github.com/uos-gbp/imu_tools-release/archive/release/melodic/rviz_imu_plugin/1.2.4-1.tar.gz";
    name = "1.2.4-1.tar.gz";
    sha256 = "65f36dcbfb2f5b9f8bced4165b8ffcd873823fbc8b7e12397f3d1f13b8b18ff3";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ qt5.qtbase roscpp rviz ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''RVIZ plugin for IMU visualization'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
