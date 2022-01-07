
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, visp-auto-tracker, visp-bridge, visp-camera-calibration, visp-hand2eye-calibration, visp-tracker }:
buildRosPackage {
  pname = "ros-noetic-vision-visp";
  version = "0.12.1-r1";

  src = fetchurl {
    url = "https://github.com/lagadic/vision_visp-release/archive/release/noetic/vision_visp/0.12.1-1.tar.gz";
    name = "0.12.1-1.tar.gz";
    sha256 = "28e44cc1fa6ce206e0f09ab8528665508bd9aa363bb4adde97ba9b2e0c29ce8b";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ visp-auto-tracker visp-bridge visp-camera-calibration visp-hand2eye-calibration visp-tracker ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Virtual package providing ViSP related packages.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
