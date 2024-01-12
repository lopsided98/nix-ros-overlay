
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, camera-calibration-parsers, catkin, geometry-msgs, message-generation, message-runtime, roscpp, rqt-console, sensor-msgs, std-msgs, visp, visp-bridge }:
buildRosPackage {
  pname = "ros-noetic-visp-camera-calibration";
  version = "0.13.1-r1";

  src = fetchurl {
    url = "https://github.com/lagadic/vision_visp-release/archive/release/noetic/visp_camera_calibration/0.13.1-1.tar.gz";
    name = "0.13.1-1.tar.gz";
    sha256 = "b97dd9ee9c9b87ce05f1f44fa28501c9c473851f452b8efdea0c8c70911e8fcd";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ camera-calibration-parsers geometry-msgs message-generation message-runtime roscpp rqt-console sensor-msgs std-msgs visp visp-bridge ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''visp_camera_calibration allows easy calibration of
     cameras using a customizable pattern and ViSP library.'';
    license = with lib.licenses; [ "GPL-2.0-only" ];
  };
}
