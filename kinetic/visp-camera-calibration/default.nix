
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, visp-bridge, camera-calibration-parsers, sensor-msgs, catkin, message-generation, visp, message-runtime, std-msgs, roscpp, geometry-msgs }:
buildRosPackage {
  pname = "ros-kinetic-visp-camera-calibration";
  version = "0.10.0";

  src = fetchurl {
    url = https://github.com/lagadic/vision_visp-release/archive/release/kinetic/visp_camera_calibration/0.10.0-0.tar.gz;
    sha256 = "8ba7ebafa1f72b6fb69f8524704aba33c32a9b8907613524a5788bafc880dfcd";
  };

  buildInputs = [ message-generation visp visp-bridge std-msgs camera-calibration-parsers roscpp sensor-msgs geometry-msgs ];
  propagatedBuildInputs = [ visp-bridge camera-calibration-parsers sensor-msgs message-generation visp message-runtime std-msgs roscpp geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''visp_camera_calibration allows easy calibration of
     cameras using a customizable pattern and ViSP library.'';
    #license = lib.licenses.GPLv2;
  };
}
