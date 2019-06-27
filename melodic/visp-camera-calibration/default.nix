
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, visp-bridge, camera-calibration-parsers, sensor-msgs, catkin, message-generation, visp, message-runtime, std-msgs, roscpp, geometry-msgs }:
buildRosPackage {
  pname = "ros-melodic-visp-camera-calibration";
  version = "0.11.0-r1";

  src = fetchurl {
    url = https://github.com/lagadic/vision_visp-release/archive/release/melodic/visp_camera_calibration/0.11.0-1.tar.gz;
    sha256 = "d31f9266dceea12a92472f97047240dc99f633794a57ecc870a660280f172553";
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
