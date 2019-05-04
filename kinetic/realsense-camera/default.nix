
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, librealsense, boost, roslint, camera-info-manager, tf, image-transport, cv-bridge, catkin, sensor-msgs, rostest, message-generation, message-runtime, nodelet, pcl-ros, std-msgs, rgbd-launch, dynamic-reconfigure, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-realsense-camera";
  version = "1.8.1-r1";

  src = fetchurl {
    url = https://github.com/intel-ros/realsense-release/archive/release/kinetic/realsense_camera/1.8.1-1.tar.gz;
    sha256 = "dd57a362aa43f90e26f09f30172a7338108d4ced737300c15b8a983cb3f7bec2";
  };

  buildInputs = [ librealsense boost roslint camera-info-manager image-transport sensor-msgs cv-bridge roscpp rostest message-generation nodelet pcl-ros std-msgs dynamic-reconfigure tf ];
  propagatedBuildInputs = [ librealsense boost camera-info-manager image-transport sensor-msgs cv-bridge roscpp rostest message-generation message-runtime nodelet pcl-ros std-msgs rgbd-launch dynamic-reconfigure tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''RealSense Camera package allowing access to Intel 3D cameras and advanced modules'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
