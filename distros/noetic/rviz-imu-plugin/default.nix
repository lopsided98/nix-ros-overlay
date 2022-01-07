
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, qt5, roscpp, rviz }:
buildRosPackage {
  pname = "ros-noetic-rviz-imu-plugin";
  version = "1.2.3-r1";

  src = fetchurl {
    url = "https://github.com/uos-gbp/imu_tools-release/archive/release/noetic/rviz_imu_plugin/1.2.3-1.tar.gz";
    name = "1.2.3-1.tar.gz";
    sha256 = "9126da97631404722996aaec8fde11f96a3e4d897839e8be62304130fdba8555";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ qt5.qtbase roscpp rviz ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''RVIZ plugin for IMU visualization'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
