
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, pcl-ros, boost, sensor-msgs, dynamic-reconfigure, message-runtime, std-msgs, camera-info-manager, tf, catkin, roslint, image-transport, cv-bridge, nodelet, roscpp, message-generation, rostest, librealsense, rgbd-launch }:
buildRosPackage {
  pname = "ros-kinetic-realsense-camera";
  version = "1.8.1-r1";

  src = fetchurl {
    url = "https://github.com/intel-ros/realsense-release/archive/release/kinetic/realsense_camera/1.8.1-1.tar.gz";
    name = "1.8.1-1.tar.gz";
    sha256 = "dd57a362aa43f90e26f09f30172a7338108d4ced737300c15b8a983cb3f7bec2";
  };

  buildType = "catkin";
  buildInputs = [ pcl-ros boost sensor-msgs dynamic-reconfigure std-msgs camera-info-manager tf roslint image-transport cv-bridge nodelet roscpp message-generation rostest librealsense ];
  propagatedBuildInputs = [ pcl-ros sensor-msgs boost dynamic-reconfigure message-runtime std-msgs camera-info-manager tf image-transport cv-bridge nodelet roscpp message-generation rostest librealsense rgbd-launch ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''RealSense Camera package allowing access to Intel 3D cameras and advanced modules'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
