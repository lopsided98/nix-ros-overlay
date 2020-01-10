
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cv-bridge, ddynamic-reconfigure, diagnostic-updater, genmsg, image-transport, librealsense2, message-runtime, nav-msgs, nodelet, roscpp, sensor-msgs, std-msgs, tf }:
buildRosPackage {
  pname = "ros-kinetic-realsense2-camera";
  version = "2.2.11-r1";

  src = fetchurl {
    url = "https://github.com/IntelRealSense/realsense-ros-release/archive/release/kinetic/realsense2_camera/2.2.11-1.tar.gz";
    name = "2.2.11-1.tar.gz";
    sha256 = "ea1563ddeb76a9f9ef5c14fccc86ef1440e6ed91b7e82d8bf34ec6777783ce5f";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ cv-bridge ddynamic-reconfigure diagnostic-updater genmsg image-transport librealsense2 message-runtime nav-msgs nodelet roscpp sensor-msgs std-msgs tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''RealSense Camera package allowing access to Intel T265 Tracking module and SR300 and D400 3D cameras'';
    license = with lib.licenses; [ asl20 ];
  };
}
