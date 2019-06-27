
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, visp-bridge, sensor-msgs, catkin, message-generation, visp, message-runtime, std-msgs, image-proc, roscpp, geometry-msgs }:
buildRosPackage {
  pname = "ros-melodic-visp-hand2eye-calibration";
  version = "0.11.0-r1";

  src = fetchurl {
    url = https://github.com/lagadic/vision_visp-release/archive/release/melodic/visp_hand2eye_calibration/0.11.0-1.tar.gz;
    sha256 = "60754feb035184e9c3b665524b9be1fb8c086962b5fce59052f9cd7d6d3af618";
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
