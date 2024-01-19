
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, dynamic-reconfigure, image-transport, nodelet, rtabmap-conversions, rtabmap-demos, rtabmap-launch, rtabmap-msgs, rtabmap-odom, rtabmap-slam, rtabmap-util, rtabmap-viz }:
buildRosPackage {
  pname = "ros-noetic-rtabmap-legacy";
  version = "0.21.3-r4";

  src = fetchurl {
    url = "https://github.com/introlab/rtabmap_ros-release/archive/release/noetic/rtabmap_legacy/0.21.3-4.tar.gz";
    name = "0.21.3-4.tar.gz";
    sha256 = "b5c7fa86fed4d1a2322e5cba34c6ece2950b621d2840cdab4d6aa67931cac33d";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ dynamic-reconfigure image-transport nodelet rtabmap-conversions rtabmap-demos rtabmap-launch rtabmap-msgs rtabmap-odom rtabmap-slam rtabmap-util rtabmap-viz ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''RTAB-Map's legacy launch files.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
