
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, camera-info-manager, catkin, diagnostic-updater, dynamic-reconfigure, image-transport, libdc1394, message-generation, message-runtime, nodelet, roscpp, rostest, sensor-msgs, tf }:
buildRosPackage {
  pname = "ros-kinetic-camera1394";
  version = "1.10.1";

  src = fetchurl {
    url = "https://github.com/ros-drivers-gbp/camera1394-release/archive/release/kinetic/camera1394/1.10.1-0.tar.gz";
    name = "1.10.1-0.tar.gz";
    sha256 = "9fbfc770e7f3b08a5b61afa9ae36b86aaec731f4292a64651266ea1ed97ed3f0";
  };

  buildType = "catkin";
  buildInputs = [ message-generation rostest ];
  propagatedBuildInputs = [ boost camera-info-manager diagnostic-updater dynamic-reconfigure image-transport libdc1394 message-runtime nodelet roscpp sensor-msgs tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS driver for devices supporting the IEEE 1394 Digital Camera
    (IIDC) protocol. Supports the ROS image_pipeline, using libdc1394
    for device access.'';
    license = with lib.licenses; [ lgpl2 ];
  };
}
