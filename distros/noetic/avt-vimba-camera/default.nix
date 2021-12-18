
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, camera-info-manager, catkin, diagnostic-updater, dynamic-reconfigure, image-proc, image-transport, message-filters, nodelet, roscpp, sensor-msgs, std-msgs, stereo-image-proc }:
buildRosPackage {
  pname = "ros-noetic-avt-vimba-camera";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/astuff/avt_vimba_camera-release/archive/release/noetic/avt_vimba_camera/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "49dff7f903af47dab6e53a0fc001016c2254a52a9eff3fd170189ed6584bc692";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ camera-info-manager diagnostic-updater dynamic-reconfigure image-proc image-transport message-filters nodelet roscpp sensor-msgs std-msgs stereo-image-proc ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Camera driver for Allied Vision Technologies (AVT) cameras, based on their Vimba SDK.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
