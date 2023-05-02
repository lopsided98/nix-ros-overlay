
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cv-bridge, image-transport, message-filters, nav-msgs, nodelet, roscpp, rtabmap-conversions, rtabmap-msgs, sensor-msgs }:
buildRosPackage {
  pname = "ros-noetic-rtabmap-sync";
  version = "0.21.1-r4";

  src = fetchurl {
    url = "https://github.com/introlab/rtabmap_ros-release/archive/release/noetic/rtabmap_sync/0.21.1-4.tar.gz";
    name = "0.21.1-4.tar.gz";
    sha256 = "dfdf91b34a97db67179be920027db955a3467a9d935420a25188761583162c51";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ cv-bridge image-transport message-filters nav-msgs nodelet roscpp rtabmap-conversions rtabmap-msgs sensor-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''RTAB-Map's synchronization package.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
