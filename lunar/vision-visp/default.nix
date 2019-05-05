
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, visp-camera-calibration, visp-bridge, catkin, visp-auto-tracker, visp-tracker, visp-hand2eye-calibration }:
buildRosPackage {
  pname = "ros-lunar-vision-visp";
  version = "0.10.0-r1";

  src = fetchurl {
    url = https://github.com/lagadic/vision_visp-release/archive/release/lunar/vision_visp/0.10.0-1.tar.gz;
    sha256 = "4f629d14644e52762755cc3b86b2e6b88bbf9a6d05f273f081d23300a1bcb9fa";
  };

  propagatedBuildInputs = [ visp-camera-calibration visp-bridge visp-auto-tracker visp-tracker visp-hand2eye-calibration ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Virtual package providing ViSP related packages.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
