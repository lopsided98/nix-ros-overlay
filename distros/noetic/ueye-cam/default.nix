
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, camera-calibration-parsers, camera-info-manager, catkin, dynamic-reconfigure, image-transport, nodelet, roscpp, sensor-msgs }:
buildRosPackage {
  pname = "ros-noetic-ueye-cam";
  version = "1.0.18-r2";

  src = fetchurl {
    url = "https://github.com/anqixu/ueye_cam-release/archive/release/noetic/ueye_cam/1.0.18-2.tar.gz";
    name = "1.0.18-2.tar.gz";
    sha256 = "9ee776b63609545375d70f534c60f41a128ac03cfb3183e7d8d4063210743ca2";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ camera-calibration-parsers camera-info-manager dynamic-reconfigure image-transport nodelet roscpp sensor-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A ROS nodelet and node that wraps the driver API for UEye cameras
    by IDS Imaging Development Systems GMBH.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
