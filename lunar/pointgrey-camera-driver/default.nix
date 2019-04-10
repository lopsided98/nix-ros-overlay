
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, roslaunch, stereo-image-proc, roslint, camera-info-manager, image-transport, sensor-msgs, catkin, libraw1394, libusb1, diagnostic-updater, wfov-camera-msgs, image-exposure-msgs, curl, nodelet, dynamic-reconfigure, image-proc, roscpp, dpkg }:
buildRosPackage {
  pname = "ros-lunar-pointgrey-camera-driver";
  version = "0.13.3";

  src = fetchurl {
    url = https://github.com/ros-drivers-gbp/pointgrey_camera_driver-release/archive/release/lunar/pointgrey_camera_driver/0.13.3-0.tar.gz;
    sha256 = "99ba37b57ed9bfa3c639c29b22627320e7ef02f09847ce82debbc7f0c63baef5";
  };

  buildInputs = [ camera-info-manager image-transport sensor-msgs libraw1394 roscpp libusb1 diagnostic-updater wfov-camera-msgs image-exposure-msgs curl dynamic-reconfigure nodelet dpkg ];
  checkInputs = [ roslaunch roslint ];
  propagatedBuildInputs = [ stereo-image-proc camera-info-manager image-transport sensor-msgs libraw1394 libusb1 diagnostic-updater wfov-camera-msgs image-exposure-msgs nodelet dynamic-reconfigure image-proc roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Point Grey camera driver based on libflycapture2.'';
    #license = lib.licenses.BSD;
  };
}
