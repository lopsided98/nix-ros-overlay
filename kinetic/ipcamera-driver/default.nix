
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, dynamic-reconfigure, camera-info-manager, catkin, image-transport, cv-bridge, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-ipcamera-driver";
  version = "0.1.1-r1";

  src = fetchurl {
    url = "https://github.com/alireza-hosseini/ipcamera_driver-release/archive/release/kinetic/ipcamera_driver/0.1.1-1.tar.gz";
    name = "0.1.1-1.tar.gz";
    sha256 = "db92e85739cb89d365a5e9c331f29bf3efea0160e3287599bc506a6d1014eee4";
  };

  buildType = "catkin";
  buildInputs = [ sensor-msgs dynamic-reconfigure camera-info-manager image-transport cv-bridge roscpp ];
  propagatedBuildInputs = [ sensor-msgs dynamic-reconfigure camera-info-manager image-transport cv-bridge roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Simple node to publish regular IP camera video streams to a ros topic.'';
    license = with lib.licenses; [ gpl1 ];
  };
}
