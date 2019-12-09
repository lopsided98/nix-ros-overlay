
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, message-generation, sensor-msgs, geometry-msgs, std-msgs, image-proc, catkin, visp, roscpp, visp-bridge, message-runtime }:
buildRosPackage {
  pname = "ros-kinetic-visp-hand2eye-calibration";
  version = "0.11.1-r1";

  src = fetchurl {
    url = "https://github.com/lagadic/vision_visp-release/archive/release/kinetic/visp_hand2eye_calibration/0.11.1-1.tar.gz";
    name = "0.11.1-1.tar.gz";
    sha256 = "6f7abea4c74171ac5b20dfbd06aeeede8bfa8c112a4f2be58e8a10cee7a04edb";
  };

  buildType = "catkin";
  buildInputs = [ sensor-msgs geometry-msgs std-msgs image-proc visp roscpp visp-bridge message-generation ];
  propagatedBuildInputs = [ sensor-msgs geometry-msgs message-runtime std-msgs image-proc visp roscpp visp-bridge message-generation ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''visp_hand2eye_calibration estimates the camera position with respect
     to its effector using the ViSP library.'';
    license = with lib.licenses; [ gpl2 ];
  };
}
