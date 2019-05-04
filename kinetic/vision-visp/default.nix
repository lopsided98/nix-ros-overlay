
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, visp-camera-calibration, visp-bridge, catkin, visp-auto-tracker, visp-tracker, visp-hand2eye-calibration }:
buildRosPackage {
  pname = "ros-kinetic-vision-visp";
  version = "0.10.0";

  src = fetchurl {
    url = https://github.com/lagadic/vision_visp-release/archive/release/kinetic/vision_visp/0.10.0-0.tar.gz;
    sha256 = "845f27290a1e11389067b23bf2159cbea304a737df10fc51dbb585c2549bddce";
  };

  propagatedBuildInputs = [ visp-camera-calibration visp-bridge visp-auto-tracker visp-tracker visp-hand2eye-calibration ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Virtual package providing ViSP related packages.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
