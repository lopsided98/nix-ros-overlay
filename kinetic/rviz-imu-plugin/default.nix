
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rviz, catkin, roscpp, qt5 }:
buildRosPackage {
  pname = "ros-kinetic-rviz-imu-plugin";
  version = "1.1.7-r1";

  src = fetchurl {
    url = "https://github.com/uos-gbp/imu_tools-release/archive/release/kinetic/rviz_imu_plugin/1.1.7-1.tar.gz";
    name = "1.1.7-1.tar.gz";
    sha256 = "451718edd552558e2ca746a9083c8b393a823ae5124fa61a7cd88fdb5f92ff5f";
  };

  buildType = "catkin";
  buildInputs = [ rviz roscpp qt5.qtbase ];
  propagatedBuildInputs = [ rviz roscpp qt5.qtbase ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''RVIZ plugin for IMU visualization'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
