
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ddynamic-reconfigure, image-transport, sensor-msgs, cv-bridge, catkin, roscpp, diagnostic-updater, nav-msgs, message-runtime, nodelet, std-msgs, genmsg, tf, librealsense2 }:
buildRosPackage {
  pname = "ros-kinetic-realsense2-camera";
  version = "2.2.6-r2";

  src = fetchurl {
    url = "https://github.com/IntelRealSense/realsense-ros-release/archive/release/kinetic/realsense2_camera/2.2.6-2.tar.gz";
    name = "2.2.6-2.tar.gz";
    sha256 = "91aef3e0b721180ac6a1e130b771538d18f667e1cd74deda19412368129323fd";
  };

  buildType = "catkin";
  buildInputs = [ image-transport sensor-msgs cv-bridge genmsg roscpp diagnostic-updater nav-msgs message-runtime nodelet std-msgs ddynamic-reconfigure tf librealsense2 ];
  propagatedBuildInputs = [ image-transport sensor-msgs cv-bridge genmsg roscpp diagnostic-updater nav-msgs message-runtime nodelet std-msgs ddynamic-reconfigure tf librealsense2 ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''RealSense Camera package allowing access to Intel T265 Tracking module and SR300 and D400 3D cameras'';
    license = with lib.licenses; [ asl20 ];
  };
}
