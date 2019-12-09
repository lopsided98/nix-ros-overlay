
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, geometry-msgs, std-msgs, catkin, visp, roscpp, camera-calibration-parsers }:
buildRosPackage {
  pname = "ros-melodic-visp-bridge";
  version = "0.11.1-r1";

  src = fetchurl {
    url = "https://github.com/lagadic/vision_visp-release/archive/release/melodic/visp_bridge/0.11.1-1.tar.gz";
    name = "0.11.1-1.tar.gz";
    sha256 = "fb3c65629562f788a601202f916a03a96138bb1486aa6f14b26d798261303f62";
  };

  buildType = "catkin";
  buildInputs = [ sensor-msgs geometry-msgs std-msgs visp roscpp camera-calibration-parsers ];
  propagatedBuildInputs = [ sensor-msgs geometry-msgs std-msgs visp roscpp camera-calibration-parsers ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Converts between ROS structures and ViSP structures.'';
    license = with lib.licenses; [ gpl2 ];
  };
}
