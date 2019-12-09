
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, stereo-image-proc, sensor-msgs, libraw1394, dynamic-reconfigure, dpkg, camera-info-manager, image-proc, catkin, curl, libusb1, roslint, image-transport, wfov-camera-msgs, nodelet, roscpp, image-exposure-msgs, roslaunch, diagnostic-updater }:
buildRosPackage {
  pname = "ros-kinetic-pointgrey-camera-driver";
  version = "0.13.4";

  src = fetchurl {
    url = "https://github.com/ros-drivers-gbp/pointgrey_camera_driver-release/archive/release/kinetic/pointgrey_camera_driver/0.13.4-0.tar.gz";
    name = "0.13.4-0.tar.gz";
    sha256 = "5071819dbbc690a77113595dba44f1d6ba7baef7cd7ec55c4f120b11ed20e086";
  };

  buildType = "catkin";
  buildInputs = [ sensor-msgs libraw1394 dynamic-reconfigure dpkg camera-info-manager roscpp wfov-camera-msgs image-transport image-exposure-msgs nodelet diagnostic-updater libusb1 curl ];
  checkInputs = [ roslaunch roslint ];
  propagatedBuildInputs = [ stereo-image-proc sensor-msgs libraw1394 dynamic-reconfigure camera-info-manager image-proc libusb1 image-transport image-exposure-msgs nodelet roscpp wfov-camera-msgs diagnostic-updater ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Point Grey camera driver based on libflycapture2.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
