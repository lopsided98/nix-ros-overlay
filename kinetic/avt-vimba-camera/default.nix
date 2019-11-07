
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, stereo-image-proc, camera-info-manager, image-transport, sensor-msgs, catkin, message-filters, polled-camera, roscpp, image-geometry, diagnostic-updater, dynamic-reconfigure, std-msgs, image-proc, nodelet }:
buildRosPackage {
  pname = "ros-kinetic-avt-vimba-camera";
  version = "0.0.11-r1";

  src = fetchurl {
    url = "https://github.com/astuff/avt_vimba_camera-release/archive/release/kinetic/avt_vimba_camera/0.0.11-1.tar.gz";
    name = "0.0.11-1.tar.gz";
    sha256 = "89c3684eb8bac9fc18634dc66b731c66fdb60d68dea3257f1672ddc8e1096228";
  };

  buildType = "catkin";
  buildInputs = [ camera-info-manager image-transport sensor-msgs message-filters polled-camera roscpp image-geometry diagnostic-updater dynamic-reconfigure std-msgs nodelet ];
  propagatedBuildInputs = [ stereo-image-proc camera-info-manager image-transport sensor-msgs message-filters polled-camera roscpp image-geometry diagnostic-updater dynamic-reconfigure std-msgs image-proc nodelet ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Wrapper of the Allied Vision Technologies (AVT) VIMBA Ethernet and Firewire SDK.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
