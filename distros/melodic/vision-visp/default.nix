
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, visp-auto-tracker, visp-bridge, visp-camera-calibration, visp-hand2eye-calibration, visp-tracker }:
buildRosPackage {
  pname = "ros-melodic-vision-visp";
  version = "0.13.0-r1";

  src = fetchurl {
    url = "https://github.com/lagadic/vision_visp-release/archive/release/melodic/vision_visp/0.13.0-1.tar.gz";
    name = "0.13.0-1.tar.gz";
    sha256 = "0a76c249630101b60c70add2b31d25dac25fcd59381f49e7858dc2d1c668a984";
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
