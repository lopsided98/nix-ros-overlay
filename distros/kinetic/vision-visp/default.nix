
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, visp-auto-tracker, visp-bridge, visp-camera-calibration, visp-hand2eye-calibration, visp-tracker }:
buildRosPackage {
  pname = "ros-kinetic-vision-visp";
  version = "0.12.0-r1";

  src = fetchurl {
    url = "https://github.com/lagadic/vision_visp-release/archive/release/kinetic/vision_visp/0.12.0-1.tar.gz";
    name = "0.12.0-1.tar.gz";
    sha256 = "baad28fc882d65f718925044129b386e3ebcfe8b3ca92fb9bfdca0f62dcf5596";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ visp-auto-tracker visp-bridge visp-camera-calibration visp-hand2eye-calibration visp-tracker ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Virtual package providing ViSP related packages.'';
    license = with lib.licenses; [ gpl2 ];
  };
}
