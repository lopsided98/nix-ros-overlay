
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, camera-calibration-parsers, camera-info-manager, catkin, dynamic-reconfigure, image-transport, nodelet, roscpp, sensor-msgs }:
buildRosPackage {
  pname = "ros-melodic-ueye-cam";
  version = "1.0.17-r1";

  src = fetchurl {
    url = "https://github.com/anqixu/ueye_cam-release/archive/release/melodic/ueye_cam/1.0.17-1.tar.gz";
    name = "1.0.17-1.tar.gz";
    sha256 = "03d172816684251094ab052bb7b8d6c9be51d752e47f5bea0153f24ccc2932f2";
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
