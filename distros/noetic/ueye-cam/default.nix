
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, camera-calibration-parsers, camera-info-manager, catkin, dynamic-reconfigure, image-transport, nodelet, roscpp, sensor-msgs }:
buildRosPackage {
  pname = "ros-noetic-ueye-cam";
  version = "1.0.19-r1";

  src = fetchurl {
    url = "https://github.com/anqixu/ueye_cam-release/archive/release/noetic/ueye_cam/1.0.19-1.tar.gz";
    name = "1.0.19-1.tar.gz";
    sha256 = "b4123e716d5d400cbbd6b76e33b70fc469246e2fc77602926b07841b915e1dd3";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ camera-calibration-parsers camera-info-manager dynamic-reconfigure image-transport nodelet roscpp sensor-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A ROS nodelet and node that wraps the driver API for UEye cameras
    by IDS Imaging Development Systems GMBH.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
