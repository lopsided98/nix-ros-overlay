
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, visp-bridge, camera-calibration-parsers, sensor-msgs, catkin, message-generation, visp, message-runtime, std-msgs, roscpp, geometry-msgs }:
buildRosPackage {
  pname = "ros-lunar-visp-camera-calibration";
  version = "0.10.0-r1";

  src = fetchurl {
    url = https://github.com/lagadic/vision_visp-release/archive/release/lunar/visp_camera_calibration/0.10.0-1.tar.gz;
    sha256 = "b0668faf9ac6893beba5248dd55f2b5630ca00c99c1257fed6ea9202fb30e86c";
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
