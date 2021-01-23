
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cv-bridge, ddynamic-reconfigure, diagnostic-updater, eigen, genmsg, image-transport, librealsense2, message-runtime, nav-msgs, nodelet, roscpp, sensor-msgs, std-msgs, tf }:
buildRosPackage {
  pname = "ros-noetic-realsense2-camera";
  version = "2.2.20-r1";

  src = fetchurl {
    url = "https://github.com/IntelRealSense/realsense-ros-release/archive/release/noetic/realsense2_camera/2.2.20-1.tar.gz";
    name = "2.2.20-1.tar.gz";
    sha256 = "ecbf7c8ced7e400328eb00c7bb3b7999849d2d8a36b9ca810264f5b8a5a3ee32";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ cv-bridge ddynamic-reconfigure diagnostic-updater eigen genmsg image-transport librealsense2 message-runtime nav-msgs nodelet roscpp sensor-msgs std-msgs tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''RealSense Camera package allowing access to Intel T265 Tracking module and SR300 and D400 3D cameras'';
    license = with lib.licenses; [ asl20 ];
  };
}
