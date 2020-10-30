
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cv-bridge, ddynamic-reconfigure, diagnostic-updater, eigen, genmsg, image-transport, librealsense2, message-runtime, nav-msgs, nodelet, roscpp, sensor-msgs, std-msgs, tf }:
buildRosPackage {
  pname = "ros-kinetic-realsense2-camera";
  version = "2.2.18-r1";

  src = fetchurl {
    url = "https://github.com/IntelRealSense/realsense-ros-release/archive/release/kinetic/realsense2_camera/2.2.18-1.tar.gz";
    name = "2.2.18-1.tar.gz";
    sha256 = "2595d07f1873ccc0a2b2d78739e1ce06c59c2fc0afb12089e25181e62b41abe7";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ cv-bridge ddynamic-reconfigure diagnostic-updater eigen genmsg image-transport librealsense2 message-runtime nav-msgs nodelet roscpp sensor-msgs std-msgs tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''RealSense Camera package allowing access to Intel T265 Tracking module and SR300 and D400 3D cameras'';
    license = with lib.licenses; [ asl20 ];
  };
}
