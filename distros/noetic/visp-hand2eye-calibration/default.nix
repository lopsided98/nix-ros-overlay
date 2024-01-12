
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, image-proc, message-generation, message-runtime, roscpp, sensor-msgs, std-msgs, visp, visp-bridge }:
buildRosPackage {
  pname = "ros-noetic-visp-hand2eye-calibration";
  version = "0.13.1-r1";

  src = fetchurl {
    url = "https://github.com/lagadic/vision_visp-release/archive/release/noetic/visp_hand2eye_calibration/0.13.1-1.tar.gz";
    name = "0.13.1-1.tar.gz";
    sha256 = "3cbffcd182369a51b8133ef457d5847f9631e652ef6aeb25f616ab149bddc710";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ geometry-msgs image-proc message-generation message-runtime roscpp sensor-msgs std-msgs visp visp-bridge ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''visp_hand2eye_calibration estimates the camera position with respect
     to its effector using the ViSP library.'';
    license = with lib.licenses; [ "GPL-2.0-only" ];
  };
}
