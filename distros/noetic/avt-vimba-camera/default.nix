
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, camera-info-manager, catkin, diagnostic-updater, dynamic-reconfigure, image-geometry, image-proc, image-transport, message-filters, nodelet, polled-camera, roscpp, sensor-msgs, std-msgs, stereo-image-proc }:
buildRosPackage {
  pname = "ros-noetic-avt-vimba-camera";
  version = "0.0.12-r2";

  src = fetchurl {
    url = "https://github.com/astuff/avt_vimba_camera-release/archive/release/noetic/avt_vimba_camera/0.0.12-2.tar.gz";
    name = "0.0.12-2.tar.gz";
    sha256 = "ff2a92ae2d911bb50b0d589f3e2730f58f59a28078fe5fbef6c897f448455736";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ camera-info-manager diagnostic-updater dynamic-reconfigure image-geometry image-proc image-transport message-filters nodelet polled-camera roscpp sensor-msgs std-msgs stereo-image-proc ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Wrapper of the Allied Vision Technologies (AVT) VIMBA Ethernet and Firewire SDK.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
