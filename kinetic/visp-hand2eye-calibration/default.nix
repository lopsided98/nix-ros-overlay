
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, visp-bridge, sensor-msgs, catkin, message-generation, visp, message-runtime, std-msgs, image-proc, roscpp, geometry-msgs }:
buildRosPackage {
  pname = "ros-kinetic-visp-hand2eye-calibration";
  version = "0.10.0";

  src = fetchurl {
    url = https://github.com/lagadic/vision_visp-release/archive/release/kinetic/visp_hand2eye_calibration/0.10.0-0.tar.gz;
    sha256 = "691fc27d7281958a709dcbdb32afe3d5166ad0fa53bcfe915382e540bf0a6a80";
  };

  propagatedBuildInputs = [ visp-bridge sensor-msgs message-generation visp message-runtime std-msgs image-proc roscpp geometry-msgs ];
  nativeBuildInputs = [ visp-bridge sensor-msgs catkin message-generation visp std-msgs image-proc roscpp geometry-msgs ];

  meta = {
    description = ''visp_hand2eye_calibration estimates the camera position with respect
     to its effector using the ViSP library.'';
    #license = lib.licenses.GPLv2;
  };
}
