
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, dynamic-reconfigure, image-transport, nodelet, rtabmap-conversions, rtabmap-demos, rtabmap-launch, rtabmap-msgs, rtabmap-odom, rtabmap-slam, rtabmap-util, rtabmap-viz }:
buildRosPackage {
  pname = "ros-noetic-rtabmap-legacy";
  version = "0.21.4-r1";

  src = fetchurl {
    url = "https://github.com/introlab/rtabmap_ros-release/archive/release/noetic/rtabmap_legacy/0.21.4-1.tar.gz";
    name = "0.21.4-1.tar.gz";
    sha256 = "7f45a321515218662bd46239948ae2dc13c802ae3e9276feb085b550672fab45";
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
