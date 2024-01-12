
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, camera-info-manager, catkin, cv-bridge, dynamic-reconfigure, image-transport, roscpp, sensor-msgs }:
buildRosPackage {
  pname = "ros-noetic-ipcamera-driver";
  version = "0.1.1-r1";

  src = fetchurl {
    url = "https://github.com/alireza-hosseini/ipcamera_driver-release/archive/release/noetic/ipcamera_driver/0.1.1-1.tar.gz";
    name = "0.1.1-1.tar.gz";
    sha256 = "a1b25abd5b024972c806f46fa24f8abad5f3ec0e072baa282277ef354fb9fb57";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ camera-info-manager cv-bridge dynamic-reconfigure image-transport roscpp sensor-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Simple node to publish regular IP camera video streams to a ros topic.'';
    license = with lib.licenses; [ "GPL" ];
  };
}
