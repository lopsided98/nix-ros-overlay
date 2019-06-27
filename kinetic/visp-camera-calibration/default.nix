
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, visp-bridge, camera-calibration-parsers, sensor-msgs, catkin, message-generation, visp, message-runtime, std-msgs, roscpp, geometry-msgs }:
buildRosPackage {
  pname = "ros-kinetic-visp-camera-calibration";
  version = "0.11.0-r1";

  src = fetchurl {
    url = https://github.com/lagadic/vision_visp-release/archive/release/kinetic/visp_camera_calibration/0.11.0-1.tar.gz;
    sha256 = "c93b3578c8dad79090160186fa22f8b781e5f5d16c0909a30d4b6dd1a87daed6";
  };

  buildInputs = [ visp-bridge camera-calibration-parsers sensor-msgs message-generation visp std-msgs roscpp geometry-msgs ];
  propagatedBuildInputs = [ visp-bridge camera-calibration-parsers sensor-msgs message-generation visp message-runtime std-msgs roscpp geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''visp_camera_calibration allows easy calibration of
     cameras using a customizable pattern and ViSP library.'';
    license = with lib.licenses; [ gpl2 ];
  };
}
