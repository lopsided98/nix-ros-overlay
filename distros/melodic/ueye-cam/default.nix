
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, camera-calibration-parsers, camera-info-manager, catkin, dynamic-reconfigure, image-transport, nodelet, roscpp, sensor-msgs }:
buildRosPackage {
  pname = "ros-melodic-ueye-cam";
  version = "1.0.18-r1";

  src = fetchurl {
    url = "https://github.com/anqixu/ueye_cam-release/archive/release/melodic/ueye_cam/1.0.18-1.tar.gz";
    name = "1.0.18-1.tar.gz";
    sha256 = "8286de2a4b958373e0b8fd3de53fb05632eb33a882a37388143139a306406e39";
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
