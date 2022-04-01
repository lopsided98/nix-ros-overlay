
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, camera-info-manager, catkin, curl, diagnostic-updater, dpkg, dynamic-reconfigure, image-exposure-msgs, image-proc, image-transport, libusb1, nodelet, roscpp, roslaunch, roslint, sensor-msgs, wfov-camera-msgs }:
buildRosPackage {
  pname = "ros-noetic-spinnaker-camera-driver";
  version = "0.2.2-r1";

  src = fetchurl {
    url = "https://github.com/ros-drivers-gbp/flir_camera_driver-release/archive/release/noetic/spinnaker_camera_driver/0.2.2-1.tar.gz";
    name = "0.2.2-1.tar.gz";
    sha256 = "d011ea1c0289cdf7318a96d0af10c0f23bfb7aad54062ee92d473119ecd7941d";
  };

  buildType = "catkin";
  buildInputs = [ curl dpkg ];
  checkInputs = [ roslaunch roslint ];
  propagatedBuildInputs = [ camera-info-manager diagnostic-updater dynamic-reconfigure image-exposure-msgs image-proc image-transport libusb1 nodelet roscpp sensor-msgs wfov-camera-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Spinnaker camera driver based on Spinnaker.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
