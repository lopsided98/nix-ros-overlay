
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, rtabmap-conversions, rtabmap-demos, rtabmap-examples, rtabmap-launch, rtabmap-msgs, rtabmap-odom, rtabmap-python, rtabmap-rviz-plugins, rtabmap-slam, rtabmap-sync, rtabmap-util, rtabmap-viz }:
buildRosPackage {
  pname = "ros-foxy-rtabmap-ros";
  version = "0.21.1-r1";

  src = fetchurl {
    url = "https://github.com/introlab/rtabmap_ros-release/archive/release/foxy/rtabmap_ros/0.21.1-1.tar.gz";
    name = "0.21.1-1.tar.gz";
    sha256 = "e63d3afa8ef3696d133c7f7af863ba023e3c0c32db71029db16e25967d4f5c8f";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ rtabmap-conversions rtabmap-demos rtabmap-examples rtabmap-launch rtabmap-msgs rtabmap-odom rtabmap-python rtabmap-rviz-plugins rtabmap-slam rtabmap-sync rtabmap-util rtabmap-viz ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''RTAB-Map Stack'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
