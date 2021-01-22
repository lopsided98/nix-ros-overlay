
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, camera-calibration-parsers, camera-info-manager, catkin, dynamic-reconfigure, image-transport, nodelet, roscpp, sensor-msgs }:
buildRosPackage {
  pname = "ros-kinetic-ueye-cam";
  version = "1.0.18-r1";

  src = fetchurl {
    url = "https://github.com/anqixu/ueye_cam-release/archive/release/kinetic/ueye_cam/1.0.18-1.tar.gz";
    name = "1.0.18-1.tar.gz";
    sha256 = "c53010bc085888f9f8cc88c69c91ec25c828a3de8aa65d867253c1a4d0c3447c";
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
