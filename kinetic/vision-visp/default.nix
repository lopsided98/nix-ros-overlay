
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, visp-camera-calibration, visp-bridge, catkin, visp-auto-tracker, visp-tracker, visp-hand2eye-calibration }:
buildRosPackage {
  pname = "ros-kinetic-vision-visp";
  version = "0.11.0-r1";

  src = fetchurl {
    url = https://github.com/lagadic/vision_visp-release/archive/release/kinetic/vision_visp/0.11.0-1.tar.gz;
    sha256 = "2f36f20c1bfa391117a08f907813e9d0f0918b393883c47fbeb6bd497565a05b";
  };

  propagatedBuildInputs = [ visp-camera-calibration visp-bridge visp-auto-tracker visp-tracker visp-hand2eye-calibration ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Virtual package providing ViSP related packages.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
