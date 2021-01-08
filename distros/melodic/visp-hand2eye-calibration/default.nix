
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, image-proc, message-generation, message-runtime, roscpp, sensor-msgs, std-msgs, visp, visp-bridge }:
buildRosPackage {
  pname = "ros-melodic-visp-hand2eye-calibration";
  version = "0.11.1-r1";

  src = fetchurl {
    url = "https://github.com/lagadic/vision_visp-release/archive/release/melodic/visp_hand2eye_calibration/0.11.1-1.tar.gz";
    name = "0.11.1-1.tar.gz";
    sha256 = "75178b169e63d1052f93e19620f1f25d188948a6944eb55db8d169a33b8f065e";
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
