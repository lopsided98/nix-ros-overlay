
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cv-bridge, diagnostic-updater, image-transport, message-filters, nav-msgs, nodelet, roscpp, rtabmap-conversions, rtabmap-msgs, sensor-msgs }:
buildRosPackage {
  pname = "ros-noetic-rtabmap-sync";
  version = "0.21.4-r1";

  src = fetchurl {
    url = "https://github.com/introlab/rtabmap_ros-release/archive/release/noetic/rtabmap_sync/0.21.4-1.tar.gz";
    name = "0.21.4-1.tar.gz";
    sha256 = "357f175df2fd3a1ffd10e4a996df33b4f1b3d08248e27d527e6143094de78d4d";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ cv-bridge diagnostic-updater image-transport message-filters nav-msgs nodelet roscpp rtabmap-conversions rtabmap-msgs sensor-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "RTAB-Map's synchronization package.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
