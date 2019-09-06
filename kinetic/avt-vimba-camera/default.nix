
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, camera-info-manager, image-transport, sensor-msgs, catkin, message-filters, polled-camera, image-geometry, diagnostic-updater, dynamic-reconfigure, std-msgs, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-avt-vimba-camera";
  version = "0.0.10";

  src = fetchurl {
    url = "https://github.com/srv/avt_vimba_camera-release/archive/release/kinetic/avt_vimba_camera/0.0.10-0.tar.gz";
    name = "0.0.10-0.tar.gz";
    sha256 = "bd7f88e11df09fc332ada9f3f0e595b1e70c83ac9a9294a4a0b0e2269e795e4f";
  };

  buildType = "catkin";
  buildInputs = [ camera-info-manager image-transport sensor-msgs message-filters polled-camera image-geometry diagnostic-updater dynamic-reconfigure std-msgs roscpp ];
  propagatedBuildInputs = [ camera-info-manager image-transport sensor-msgs message-filters polled-camera image-geometry diagnostic-updater dynamic-reconfigure std-msgs roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Wrapper of the Allied Vision Technologies (AVT) VIMBA Ethernet and Firewire SDK.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
