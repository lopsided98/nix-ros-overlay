
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, camera-info-manager, catkin, curl, diagnostic-updater, dpkg, dynamic-reconfigure, image-exposure-msgs, image-proc, image-transport, libraw1394, libusb1, nodelet, roscpp, roslaunch, roslint, sensor-msgs, stereo-image-proc, wfov-camera-msgs }:
buildRosPackage {
  pname = "ros-noetic-pointgrey-camera-driver";
  version = "0.15.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-drivers-gbp/pointgrey_camera_driver-release/archive/release/noetic/pointgrey_camera_driver/0.15.1-1.tar.gz";
    name = "0.15.1-1.tar.gz";
    sha256 = "5af5603bb72ac4da3259ca169526f83b47ac2d62f5ae2755983696bf1ade1a81";
  };

  buildType = "catkin";
  buildInputs = [ catkin curl dpkg ];
  checkInputs = [ roslaunch roslint ];
  propagatedBuildInputs = [ camera-info-manager diagnostic-updater dynamic-reconfigure image-exposure-msgs image-proc image-transport libraw1394 libusb1 nodelet roscpp sensor-msgs stereo-image-proc wfov-camera-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Point Grey camera driver based on libflycapture2.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
