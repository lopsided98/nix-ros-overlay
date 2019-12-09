
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, message-generation, sensor-msgs, geometry-msgs, std-msgs, catkin, visp, roscpp, visp-bridge, message-runtime, camera-calibration-parsers }:
buildRosPackage {
  pname = "ros-kinetic-visp-camera-calibration";
  version = "0.11.1-r1";

  src = fetchurl {
    url = "https://github.com/lagadic/vision_visp-release/archive/release/kinetic/visp_camera_calibration/0.11.1-1.tar.gz";
    name = "0.11.1-1.tar.gz";
    sha256 = "48bea444004f594c136b9877b758bde415204ea1ef8a64c919f2ad8b7c2dd9ed";
  };

  buildType = "catkin";
  buildInputs = [ sensor-msgs geometry-msgs std-msgs visp roscpp visp-bridge message-generation camera-calibration-parsers ];
  propagatedBuildInputs = [ sensor-msgs geometry-msgs message-runtime std-msgs visp roscpp visp-bridge message-generation camera-calibration-parsers ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''visp_camera_calibration allows easy calibration of
     cameras using a customizable pattern and ViSP library.'';
    license = with lib.licenses; [ gpl2 ];
  };
}
