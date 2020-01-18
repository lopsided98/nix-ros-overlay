
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, camera-calibration-parsers, camera-info-manager, catkin, dynamic-reconfigure, image-transport, nodelet, roscpp, sensor-msgs }:
buildRosPackage {
  pname = "ros-kinetic-ueye-cam";
  version = "1.0.16";

  src = fetchurl {
    url = "https://github.com/anqixu/ueye_cam-release/archive/release/kinetic/ueye_cam/1.0.16-0.tar.gz";
    name = "1.0.16-0.tar.gz";
    sha256 = "b58bc503b7feca34d7d68fe1af42d122635fbef9f5a6263d1d38269f09b18acc";
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
