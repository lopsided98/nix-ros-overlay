
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rviz, qt5, roscpp }:
buildRosPackage {
  pname = "ros-lunar-rviz-imu-plugin";
  version = "1.2.1-r1";

  src = fetchurl {
    url = https://github.com/uos-gbp/imu_tools-release/archive/release/lunar/rviz_imu_plugin/1.2.1-1.tar.gz;
    sha256 = "25657b1e18287ea487aa74e8ee2102e9b36838cbd07f41ce488ae04c8cc5a547";
  };

  buildInputs = [ roscpp rviz qt5.qtbase ];
  propagatedBuildInputs = [ roscpp rviz qt5.qtbase ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''RVIZ plugin for IMU visualization'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
