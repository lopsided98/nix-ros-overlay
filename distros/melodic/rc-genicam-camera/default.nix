
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, diagnostic-updater, dynamic-reconfigure, image-transport, message-generation, message-runtime, nodelet, rc-genicam-api, roscpp, sensor-msgs, std-msgs, std-srvs }:
buildRosPackage {
  pname = "ros-melodic-rc-genicam-camera";
  version = "1.3.0-r1";

  src = fetchurl {
    url = "https://github.com/roboception-gbp/rc_genicam_camera-release/archive/release/melodic/rc_genicam_camera/1.3.0-1.tar.gz";
    name = "1.3.0-1.tar.gz";
    sha256 = "9918f3dfd9322a017ac49220611b830db09e7a7d1f1b0f5c0de23feb56fe25bb";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ diagnostic-updater dynamic-reconfigure image-transport message-runtime nodelet rc-genicam-api roscpp sensor-msgs std-msgs std-srvs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The rc_genicam_camera provides images from a GenICam compatible camera.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
