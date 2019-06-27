
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, visp-camera-calibration, visp-bridge, catkin, visp-auto-tracker, visp-tracker, visp-hand2eye-calibration }:
buildRosPackage {
  pname = "ros-melodic-vision-visp";
  version = "0.11.0-r1";

  src = fetchurl {
    url = https://github.com/lagadic/vision_visp-release/archive/release/melodic/vision_visp/0.11.0-1.tar.gz;
    sha256 = "761ae567a610fbfafa40a71b9cd58e9e88b6e94b1b1dabae556b5ebecb94e2c7";
  };

  propagatedBuildInputs = [ visp-camera-calibration visp-bridge visp-auto-tracker visp-tracker visp-hand2eye-calibration ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Virtual package providing ViSP related packages.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
