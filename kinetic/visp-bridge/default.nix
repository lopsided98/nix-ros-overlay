
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, camera-calibration-parsers, sensor-msgs, catkin, visp, std-msgs, roscpp, geometry-msgs }:
buildRosPackage {
  pname = "ros-kinetic-visp-bridge";
  version = "0.11.1-r1";

  src = fetchurl {
    url = https://github.com/lagadic/vision_visp-release/archive/release/kinetic/visp_bridge/0.11.1-1.tar.gz;
    sha256 = "c7507478f8a395017253b1e748009a1f8b823e0535f0084c8032f291986e68d6";
  };

  buildInputs = [ camera-calibration-parsers sensor-msgs visp std-msgs roscpp geometry-msgs ];
  propagatedBuildInputs = [ camera-calibration-parsers sensor-msgs visp std-msgs roscpp geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Converts between ROS structures and ViSP structures.'';
    license = with lib.licenses; [ gpl2 ];
  };
}
