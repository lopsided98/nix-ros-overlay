
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, camera-info-manager, catkin, diagnostic-updater, dynamic-reconfigure, image-geometry, image-proc, image-transport, message-filters, nodelet, polled-camera, roscpp, sensor-msgs, std-msgs, stereo-image-proc }:
buildRosPackage {
  pname = "ros-kinetic-avt-vimba-camera";
  version = "0.0.11-r1";

  src = fetchurl {
    url = "https://github.com/astuff/avt_vimba_camera-release/archive/release/kinetic/avt_vimba_camera/0.0.11-1.tar.gz";
    name = "0.0.11-1.tar.gz";
    sha256 = "89c3684eb8bac9fc18634dc66b731c66fdb60d68dea3257f1672ddc8e1096228";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ camera-info-manager diagnostic-updater dynamic-reconfigure image-geometry image-proc image-transport message-filters nodelet polled-camera roscpp sensor-msgs std-msgs stereo-image-proc ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Wrapper of the Allied Vision Technologies (AVT) VIMBA Ethernet and Firewire SDK.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
