
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, qt5, roscpp, rviz }:
buildRosPackage {
  pname = "ros-noetic-rviz-imu-plugin";
  version = "1.2.7-r1";

  src = fetchurl {
    url = "https://github.com/uos-gbp/imu_tools-release/archive/release/noetic/rviz_imu_plugin/1.2.7-1.tar.gz";
    name = "1.2.7-1.tar.gz";
    sha256 = "98b0c5bf7c10bcee0e5ee5dbc8e026855687e6407d37bf1a38079c7f09eb4694";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ qt5.qtbase roscpp rviz ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "RVIZ plugin for IMU visualization";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
