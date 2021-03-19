
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, image-proc, message-generation, message-runtime, roscpp, sensor-msgs, std-msgs, visp, visp-bridge }:
buildRosPackage {
  pname = "ros-kinetic-visp-hand2eye-calibration";
  version = "0.12.0-r1";

  src = fetchurl {
    url = "https://github.com/lagadic/vision_visp-release/archive/release/kinetic/visp_hand2eye_calibration/0.12.0-1.tar.gz";
    name = "0.12.0-1.tar.gz";
    sha256 = "f1a5d27fd578b3a815a0c54f49261406ccd4c8f636ce4dd9312021fa7528825d";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ geometry-msgs image-proc message-generation message-runtime roscpp sensor-msgs std-msgs visp visp-bridge ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''visp_hand2eye_calibration estimates the camera position with respect
     to its effector using the ViSP library.'';
    license = with lib.licenses; [ gpl2 ];
  };
}
