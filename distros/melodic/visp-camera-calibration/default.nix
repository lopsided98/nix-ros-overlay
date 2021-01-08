
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, camera-calibration-parsers, catkin, geometry-msgs, message-generation, message-runtime, roscpp, sensor-msgs, std-msgs, visp, visp-bridge }:
buildRosPackage {
  pname = "ros-melodic-visp-camera-calibration";
  version = "0.11.1-r1";

  src = fetchurl {
    url = "https://github.com/lagadic/vision_visp-release/archive/release/melodic/visp_camera_calibration/0.11.1-1.tar.gz";
    name = "0.11.1-1.tar.gz";
    sha256 = "ad0ec2a1443b13767d73f4e5769b764e1046498ad93b94c65454687e4ed574c0";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ camera-calibration-parsers geometry-msgs message-generation message-runtime roscpp sensor-msgs std-msgs visp visp-bridge ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''visp_camera_calibration allows easy calibration of
     cameras using a customizable pattern and ViSP library.'';
    license = with lib.licenses; [ gpl2 ];
  };
}
