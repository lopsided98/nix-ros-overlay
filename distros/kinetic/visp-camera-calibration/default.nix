
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, camera-calibration-parsers, catkin, geometry-msgs, message-generation, message-runtime, roscpp, rqt-console, sensor-msgs, std-msgs, visp, visp-bridge }:
buildRosPackage {
  pname = "ros-kinetic-visp-camera-calibration";
  version = "0.12.0-r1";

  src = fetchurl {
    url = "https://github.com/lagadic/vision_visp-release/archive/release/kinetic/visp_camera_calibration/0.12.0-1.tar.gz";
    name = "0.12.0-1.tar.gz";
    sha256 = "48a0ab309aca4ec026a1764326a511c9b62b05e857ab5661560a1e30a52c14b1";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ camera-calibration-parsers geometry-msgs message-generation message-runtime roscpp rqt-console sensor-msgs std-msgs visp visp-bridge ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''visp_camera_calibration allows easy calibration of
     cameras using a customizable pattern and ViSP library.'';
    license = with lib.licenses; [ gpl2 ];
  };
}
