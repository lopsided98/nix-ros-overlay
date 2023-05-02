
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, rtabmap-msgs, rtabmap-odom, rtabmap-rviz-plugins, rtabmap-slam, rtabmap-util, rtabmap-viz }:
buildRosPackage {
  pname = "ros-foxy-rtabmap-launch";
  version = "0.21.1-r1";

  src = fetchurl {
    url = "https://github.com/introlab/rtabmap_ros-release/archive/release/foxy/rtabmap_launch/0.21.1-1.tar.gz";
    name = "0.21.1-1.tar.gz";
    sha256 = "38573a97af73b26f5e2a075eac7788ce3d12d14339444add4917112f3ca534a8";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ rtabmap-msgs rtabmap-odom rtabmap-rviz-plugins rtabmap-slam rtabmap-util rtabmap-viz ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''RTAB-Map's main launch files.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
