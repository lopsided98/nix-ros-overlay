
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, visp-auto-tracker, visp-bridge, visp-camera-calibration, visp-hand2eye-calibration, visp-tracker }:
buildRosPackage {
  pname = "ros-kinetic-vision-visp";
  version = "0.11.1-r1";

  src = fetchurl {
    url = "https://github.com/lagadic/vision_visp-release/archive/release/kinetic/vision_visp/0.11.1-1.tar.gz";
    name = "0.11.1-1.tar.gz";
    sha256 = "7acc83ad9964e5258008a7551aca2785ea6d65f18d632eabdbbec62592b491ff";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ visp-auto-tracker visp-bridge visp-camera-calibration visp-hand2eye-calibration visp-tracker ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Virtual package providing ViSP related packages.'';
    license = with lib.licenses; [ gpl2 ];
  };
}
