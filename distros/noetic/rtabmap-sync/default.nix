
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cv-bridge, diagnostic-updater, image-transport, message-filters, nav-msgs, nodelet, roscpp, rtabmap-conversions, rtabmap-msgs, sensor-msgs }:
buildRosPackage {
  pname = "ros-noetic-rtabmap-sync";
  version = "0.21.3-r4";

  src = fetchurl {
    url = "https://github.com/introlab/rtabmap_ros-release/archive/release/noetic/rtabmap_sync/0.21.3-4.tar.gz";
    name = "0.21.3-4.tar.gz";
    sha256 = "0a45b41ac8e87382426f72c57ef60559a1a447f38442ed54899fcdec796ff6a2";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ cv-bridge diagnostic-updater image-transport message-filters nav-msgs nodelet roscpp rtabmap-conversions rtabmap-msgs sensor-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''RTAB-Map's synchronization package.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
