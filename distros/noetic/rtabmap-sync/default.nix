
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cv-bridge, diagnostic-updater, image-transport, message-filters, nav-msgs, nodelet, roscpp, rtabmap-conversions, rtabmap-msgs, sensor-msgs }:
buildRosPackage {
  pname = "ros-noetic-rtabmap-sync";
  version = "0.21.10-r1";

  src = fetchurl {
    url = "https://github.com/introlab/rtabmap_ros-release/archive/release/noetic/rtabmap_sync/0.21.10-1.tar.gz";
    name = "0.21.10-1.tar.gz";
    sha256 = "d7a3699d6a81bf1c69f53d29cface15c3824f0ce84c70f9494987709aaa59fb9";
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
