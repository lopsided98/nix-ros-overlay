
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, camera-info-manager, catkin, cv-bridge, dynamic-reconfigure, image-transport, librealsense, message-generation, message-runtime, nodelet, pcl-ros, rgbd-launch, roscpp, roslint, rostest, sensor-msgs, std-msgs, tf }:
buildRosPackage {
  pname = "ros-kinetic-realsense-camera";
  version = "1.8.1-r1";

  src = fetchurl {
    url = "https://github.com/intel-ros/realsense-release/archive/release/kinetic/realsense_camera/1.8.1-1.tar.gz";
    name = "1.8.1-1.tar.gz";
    sha256 = "dd57a362aa43f90e26f09f30172a7338108d4ced737300c15b8a983cb3f7bec2";
  };

  buildType = "catkin";
  buildInputs = [ roslint ];
  propagatedBuildInputs = [ boost camera-info-manager cv-bridge dynamic-reconfigure image-transport librealsense message-generation message-runtime nodelet pcl-ros rgbd-launch roscpp rostest sensor-msgs std-msgs tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''RealSense Camera package allowing access to Intel 3D cameras and advanced modules'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
