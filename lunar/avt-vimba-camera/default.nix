
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, camera-info-manager, image-transport, sensor-msgs, catkin, message-filters, polled-camera, image-geometry, diagnostic-updater, dynamic-reconfigure, std-msgs, roscpp }:
buildRosPackage {
  pname = "ros-lunar-avt-vimba-camera";
  version = "0.0.10";

  src = fetchurl {
    url = https://github.com/srv/avt_vimba_camera-release/archive/release/lunar/avt_vimba_camera/0.0.10-0.tar.gz;
    sha256 = "0417426b4543a959b79ebb1e326eb998be8690493af552066c6148f4bd9ef903";
  };

  buildInputs = [ camera-info-manager image-transport sensor-msgs message-filters polled-camera image-geometry diagnostic-updater dynamic-reconfigure std-msgs roscpp ];
  propagatedBuildInputs = [ camera-info-manager image-transport sensor-msgs message-filters polled-camera image-geometry diagnostic-updater dynamic-reconfigure std-msgs roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Wrapper of the Allied Vision Technologies (AVT) VIMBA Ethernet and Firewire SDK.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
