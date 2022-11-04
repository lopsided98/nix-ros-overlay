
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, camera-info-manager, catkin, diagnostic-updater, dynamic-reconfigure, image-proc, image-transport, message-filters, nodelet, roscpp, sensor-msgs, std-msgs, stereo-image-proc }:
buildRosPackage {
  pname = "ros-melodic-avt-vimba-camera";
  version = "1.2.0-r1";

  src = fetchurl {
    url = "https://github.com/astuff/avt_vimba_camera-release/archive/release/melodic/avt_vimba_camera/1.2.0-1.tar.gz";
    name = "1.2.0-1.tar.gz";
    sha256 = "74b42283532f9c9c2b19646b0d4138cbd1aa95a2755191027fb72923070be070";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ camera-info-manager diagnostic-updater dynamic-reconfigure image-proc image-transport message-filters nodelet roscpp sensor-msgs std-msgs stereo-image-proc ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Camera driver for Allied Vision Technologies (AVT) cameras, based on their Vimba SDK.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
