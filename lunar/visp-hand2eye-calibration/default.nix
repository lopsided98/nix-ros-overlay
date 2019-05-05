
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, visp-bridge, sensor-msgs, catkin, message-generation, visp, message-runtime, std-msgs, image-proc, roscpp, geometry-msgs }:
buildRosPackage {
  pname = "ros-lunar-visp-hand2eye-calibration";
  version = "0.10.0-r1";

  src = fetchurl {
    url = https://github.com/lagadic/vision_visp-release/archive/release/lunar/visp_hand2eye_calibration/0.10.0-1.tar.gz;
    sha256 = "049a1c7885ba4342a432fd44c8f56ee5a6b23e59491feb34e0b564dc25503a69";
  };

  buildInputs = [ visp-bridge sensor-msgs message-generation visp std-msgs image-proc roscpp geometry-msgs ];
  propagatedBuildInputs = [ visp-bridge sensor-msgs message-generation visp message-runtime std-msgs image-proc roscpp geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''visp_hand2eye_calibration estimates the camera position with respect
     to its effector using the ViSP library.'';
    license = with lib.licenses; [ gpl2 ];
  };
}
