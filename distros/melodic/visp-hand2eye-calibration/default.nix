
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, image-proc, message-generation, message-runtime, roscpp, sensor-msgs, std-msgs, visp, visp-bridge }:
buildRosPackage {
  pname = "ros-melodic-visp-hand2eye-calibration";
  version = "0.13.0-r1";

  src = fetchurl {
    url = "https://github.com/lagadic/vision_visp-release/archive/release/melodic/visp_hand2eye_calibration/0.13.0-1.tar.gz";
    name = "0.13.0-1.tar.gz";
    sha256 = "62d20eef830a222518bb722659edc62b25275ba714fed9385dc57795fd75ce35";
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
