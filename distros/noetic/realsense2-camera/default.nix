
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cv-bridge, ddynamic-reconfigure, diagnostic-updater, eigen, genmsg, image-transport, librealsense2, message-generation, message-runtime, nav-msgs, nodelet, roscpp, sensor-msgs, std-msgs, std-srvs, tf }:
buildRosPackage {
  pname = "ros-noetic-realsense2-camera";
  version = "2.3.2-r1";

  src = fetchurl {
    url = "https://github.com/IntelRealSense/realsense-ros-release/archive/release/noetic/realsense2_camera/2.3.2-1.tar.gz";
    name = "2.3.2-1.tar.gz";
    sha256 = "a03a1817362e6cdb2634429010226be1b64b64371a0622b588e65ec8bc4fb1e3";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ cv-bridge ddynamic-reconfigure diagnostic-updater eigen genmsg image-transport librealsense2 message-runtime nav-msgs nodelet roscpp sensor-msgs std-msgs std-srvs tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''RealSense Camera package allowing access to Intel T265 Tracking module and SR300 and D400 3D cameras'';
    license = with lib.licenses; [ asl20 ];
  };
}
