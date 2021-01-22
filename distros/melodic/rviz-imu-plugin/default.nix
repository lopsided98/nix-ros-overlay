
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, qt5, roscpp, rviz }:
buildRosPackage {
  pname = "ros-melodic-rviz-imu-plugin";
  version = "1.2.2-r1";

  src = fetchurl {
    url = "https://github.com/uos-gbp/imu_tools-release/archive/release/melodic/rviz_imu_plugin/1.2.2-1.tar.gz";
    name = "1.2.2-1.tar.gz";
    sha256 = "8d9af7ecde2407f571f97f6d3fd6f89d67b6cd0c3cb7732f5be3c6979b570db5";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ qt5.qtbase roscpp rviz ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''RVIZ plugin for IMU visualization'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
