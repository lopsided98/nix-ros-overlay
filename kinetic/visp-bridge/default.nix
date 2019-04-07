
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, camera-calibration-parsers, sensor-msgs, catkin, visp, std-msgs, roscpp, geometry-msgs }:
buildRosPackage {
  pname = "ros-kinetic-visp-bridge";
  version = "0.10.0";

  src = fetchurl {
    url = https://github.com/lagadic/vision_visp-release/archive/release/kinetic/visp_bridge/0.10.0-0.tar.gz;
    sha256 = "191d59fb2ee63011ac734f82d6e451c4e87a06827c42e9200cbf7b8584cb7098";
  };

  buildInputs = [ visp std-msgs camera-calibration-parsers roscpp sensor-msgs geometry-msgs ];
  propagatedBuildInputs = [ visp std-msgs camera-calibration-parsers roscpp sensor-msgs geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Converts between ROS structures and ViSP structures.'';
    #license = lib.licenses.GPLv2;
  };
}
