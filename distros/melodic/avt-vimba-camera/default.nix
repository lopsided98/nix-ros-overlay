
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, camera-info-manager, catkin, diagnostic-updater, dynamic-reconfigure, image-geometry, image-proc, image-transport, message-filters, nodelet, polled-camera, roscpp, sensor-msgs, std-msgs, stereo-image-proc }:
buildRosPackage {
  pname = "ros-melodic-avt-vimba-camera";
  version = "0.0.12-r1";

  src = fetchurl {
    url = "https://github.com/astuff/avt_vimba_camera-release/archive/release/melodic/avt_vimba_camera/0.0.12-1.tar.gz";
    name = "0.0.12-1.tar.gz";
    sha256 = "8902143fcf7f83538d426f6577edfd34e0324eb22ffb37ecc4ff99541d2750af";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ camera-info-manager diagnostic-updater dynamic-reconfigure image-geometry image-proc image-transport message-filters nodelet polled-camera roscpp sensor-msgs std-msgs stereo-image-proc ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Wrapper of the Allied Vision Technologies (AVT) VIMBA Ethernet and Firewire SDK.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
