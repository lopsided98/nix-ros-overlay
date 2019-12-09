
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, visp-auto-tracker, visp-tracker, visp-hand2eye-calibration, catkin, visp-camera-calibration, visp-bridge }:
buildRosPackage {
  pname = "ros-melodic-vision-visp";
  version = "0.11.1-r1";

  src = fetchurl {
    url = "https://github.com/lagadic/vision_visp-release/archive/release/melodic/vision_visp/0.11.1-1.tar.gz";
    name = "0.11.1-1.tar.gz";
    sha256 = "ef04aa5ab2459ab1a2690f7386f223e98c86285200d45fd11f101195550dc1ef";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ visp-auto-tracker visp-tracker visp-hand2eye-calibration visp-camera-calibration visp-bridge ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Virtual package providing ViSP related packages.'';
    license = with lib.licenses; [ gpl2 ];
  };
}
