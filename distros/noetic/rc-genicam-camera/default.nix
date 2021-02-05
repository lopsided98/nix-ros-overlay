
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, diagnostic-updater, dynamic-reconfigure, image-transport, message-generation, message-runtime, nodelet, rc-genicam-api, roscpp, sensor-msgs, std-msgs, std-srvs }:
buildRosPackage {
  pname = "ros-noetic-rc-genicam-camera";
  version = "1.2.4-r1";

  src = fetchurl {
    url = "https://github.com/roboception-gbp/rc_genicam_camera-release/archive/release/noetic/rc_genicam_camera/1.2.4-1.tar.gz";
    name = "1.2.4-1.tar.gz";
    sha256 = "8ea918ece41e66baaf826ed9e1bb1335b3c8c5f12883a3de31b10a87a025a108";
  };

  buildType = "catkin";
  buildInputs = [ message-generation ];
  propagatedBuildInputs = [ diagnostic-updater dynamic-reconfigure image-transport message-runtime nodelet rc-genicam-api roscpp sensor-msgs std-msgs std-srvs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The rc_genicam_camera provides images from a GenICam compatible camera.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
