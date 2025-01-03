
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cv-bridge, diagnostic-updater, image-transport, message-filters, nav-msgs, nodelet, roscpp, rtabmap-conversions, rtabmap-msgs, sensor-msgs }:
buildRosPackage {
  pname = "ros-noetic-rtabmap-sync";
  version = "0.21.9-r1";

  src = fetchurl {
    url = "https://github.com/introlab/rtabmap_ros-release/archive/release/noetic/rtabmap_sync/0.21.9-1.tar.gz";
    name = "0.21.9-1.tar.gz";
    sha256 = "13a1c70de8aac076c4c4bf8aafc0432845dd1fc6ed72c25fe06567048d0a5e55";
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
