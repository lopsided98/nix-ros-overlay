
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, stereo-image-proc, camera-info-manager, image-transport, sensor-msgs, catkin, message-filters, polled-camera, roscpp, image-geometry, diagnostic-updater, dynamic-reconfigure, std-msgs, image-proc, nodelet }:
buildRosPackage {
  pname = "ros-melodic-avt-vimba-camera";
  version = "0.0.11-r1";

  src = fetchurl {
    url = https://github.com/astuff/avt_vimba_camera-release/archive/release/melodic/avt_vimba_camera/0.0.11-1.tar.gz;
    sha256 = "2ef59b4dcd0006486e9a68b469485bd13f54d6cc9f1d76a2b01ae229c8a1a6a4";
  };

  buildInputs = [ camera-info-manager image-transport sensor-msgs message-filters polled-camera roscpp image-geometry diagnostic-updater dynamic-reconfigure std-msgs nodelet ];
  propagatedBuildInputs = [ stereo-image-proc camera-info-manager image-transport sensor-msgs message-filters polled-camera roscpp image-geometry diagnostic-updater dynamic-reconfigure std-msgs image-proc nodelet ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Wrapper of the Allied Vision Technologies (AVT) VIMBA Ethernet and Firewire SDK.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
