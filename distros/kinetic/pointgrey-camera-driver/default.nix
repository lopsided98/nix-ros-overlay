
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, camera-info-manager, catkin, curl, diagnostic-updater, dpkg, dynamic-reconfigure, image-exposure-msgs, image-proc, image-transport, libraw1394, libusb1, nodelet, roscpp, roslaunch, roslint, sensor-msgs, stereo-image-proc, wfov-camera-msgs }:
buildRosPackage {
  pname = "ros-kinetic-pointgrey-camera-driver";
  version = "0.14.1-r2";

  src = fetchurl {
    url = "https://github.com/ros-drivers-gbp/pointgrey_camera_driver-release/archive/release/kinetic/pointgrey_camera_driver/0.14.1-2.tar.gz";
    name = "0.14.1-2.tar.gz";
    sha256 = "b1decf9215597d9387a0a2c70c2230f9e63415f0529f98473bd314aa9b9f67f4";
  };

  buildType = "catkin";
  buildInputs = [ curl dpkg ];
  checkInputs = [ roslaunch roslint ];
  propagatedBuildInputs = [ camera-info-manager diagnostic-updater dynamic-reconfigure image-exposure-msgs image-proc image-transport libraw1394 libusb1 nodelet roscpp sensor-msgs stereo-image-proc wfov-camera-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Point Grey camera driver based on libflycapture2.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
