
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, git, sensor-msgs, message-generation, dynamic-reconfigure, camera-info-manager, catkin, image-transport, nodelet, roscpp, libusb1, message-runtime, libudev }:
buildRosPackage {
  pname = "ros-kinetic-astra-camera";
  version = "0.2.2-r1";

  src = fetchurl {
    url = "https://github.com/ros-drivers-gbp/astra_camera-release/archive/release/kinetic/astra_camera/0.2.2-1.tar.gz";
    name = "0.2.2-1.tar.gz";
    sha256 = "529d38740a742672b4963ad30437fe7652b09d2b29b80199f298eb53de94e34a";
  };

  buildType = "catkin";
  buildInputs = [ git sensor-msgs dynamic-reconfigure camera-info-manager image-transport nodelet roscpp libusb1 message-generation libudev ];
  propagatedBuildInputs = [ sensor-msgs dynamic-reconfigure camera-info-manager image-transport nodelet roscpp message-runtime ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Drivers for Orbbec Astra Devices.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
