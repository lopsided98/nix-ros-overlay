
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, qt5, roscpp, rviz }:
buildRosPackage {
  pname = "ros-melodic-rviz-imu-plugin";
  version = "1.2.1-r1";

  src = fetchurl {
    url = "https://github.com/uos-gbp/imu_tools-release/archive/release/melodic/rviz_imu_plugin/1.2.1-1.tar.gz";
    name = "1.2.1-1.tar.gz";
    sha256 = "d9e0540473495ab3f625d54fe3e7dd3e2e62663540504e9c524f1cb7c8c4bec1";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ qt5.qtbase roscpp rviz ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''RVIZ plugin for IMU visualization'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
