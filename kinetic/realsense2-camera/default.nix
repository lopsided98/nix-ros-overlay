
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, std-msgs, genmsg, tf, catkin, image-transport, cv-bridge, nodelet, roscpp, librealsense2, message-runtime, nav-msgs, ddynamic-reconfigure, diagnostic-updater }:
buildRosPackage {
  pname = "ros-kinetic-realsense2-camera";
  version = "2.2.6-r2";

  src = fetchurl {
    url = "https://github.com/IntelRealSense/realsense-ros-release/archive/release/kinetic/realsense2_camera/2.2.6-2.tar.gz";
    name = "2.2.6-2.tar.gz";
    sha256 = "91aef3e0b721180ac6a1e130b771538d18f667e1cd74deda19412368129323fd";
  };

  buildType = "catkin";
  buildInputs = [ sensor-msgs genmsg std-msgs tf image-transport cv-bridge nodelet roscpp librealsense2 message-runtime nav-msgs ddynamic-reconfigure diagnostic-updater ];
  propagatedBuildInputs = [ sensor-msgs std-msgs genmsg tf roscpp image-transport cv-bridge librealsense2 nodelet message-runtime nav-msgs ddynamic-reconfigure diagnostic-updater ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''RealSense Camera package allowing access to Intel T265 Tracking module and SR300 and D400 3D cameras'';
    license = with lib.licenses; [ asl20 ];
  };
}
