
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rviz, qt5, roscpp }:
buildRosPackage {
  pname = "ros-lunar-rviz-imu-plugin";
  version = "1.2.0";

  src = fetchurl {
    url = https://github.com/uos-gbp/imu_tools-release/archive/release/lunar/rviz_imu_plugin/1.2.0-0.tar.gz;
    sha256 = "23330e418a9555d258c94701d28598f1060f4fae169cdd52935fdbb922d0e825";
  };

  buildInputs = [ roscpp rviz qt5.qtbase ];
  propagatedBuildInputs = [ roscpp rviz qt5.qtbase ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''RVIZ plugin for IMU visualization'';
    #license = lib.licenses.BSD;
  };
}
