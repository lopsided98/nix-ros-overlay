
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, camera-calibration-parsers, sensor-msgs, catkin, visp, std-msgs, roscpp, geometry-msgs }:
buildRosPackage {
  pname = "ros-melodic-visp-bridge";
  version = "0.11.0-r1";

  src = fetchurl {
    url = https://github.com/lagadic/vision_visp-release/archive/release/melodic/visp_bridge/0.11.0-1.tar.gz;
    sha256 = "f37cf228e3c36f18aafa38baccba8aef1d6c3f9d3892df3edb32f3256770ff10";
  };

  buildInputs = [ camera-calibration-parsers sensor-msgs visp std-msgs roscpp geometry-msgs ];
  propagatedBuildInputs = [ camera-calibration-parsers sensor-msgs visp std-msgs roscpp geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Converts between ROS structures and ViSP structures.'';
    license = with lib.licenses; [ gpl2 ];
  };
}
