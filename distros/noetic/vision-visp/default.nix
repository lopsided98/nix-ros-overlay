
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, visp-auto-tracker, visp-bridge, visp-camera-calibration, visp-hand2eye-calibration, visp-tracker }:
buildRosPackage {
  pname = "ros-noetic-vision-visp";
  version = "0.13.1-r1";

  src = fetchurl {
    url = "https://github.com/lagadic/vision_visp-release/archive/release/noetic/vision_visp/0.13.1-1.tar.gz";
    name = "0.13.1-1.tar.gz";
    sha256 = "71f50138e21889a4baefa0522297f16ac8a680cce8dd6106d57a619530f09184";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ visp-auto-tracker visp-bridge visp-camera-calibration visp-hand2eye-calibration visp-tracker ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Virtual package providing ViSP related packages.'';
    license = with lib.licenses; [ "GPL-2.0-only" ];
  };
}
