
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, tf2-geometry-msgs, fiducial-msgs, image-transport, catkin, cv-bridge, sensor-msgs, tf2-ros, roscpp, tf2, dynamic-reconfigure, visualization-msgs, opencv3 }:
buildRosPackage {
  pname = "ros-kinetic-dnn-detect";
  version = "0.0.3";

  src = fetchurl {
    url = https://github.com/UbiquityRobotics-release/dnn_detect-release/archive/release/kinetic/dnn_detect/0.0.3-0.tar.gz;
    sha256 = "d137392a11d23204fb54890f99d51af09c80214f8fbdb0cf17063aeba1ed22cd";
  };

  propagatedBuildInputs = [ tf2-geometry-msgs fiducial-msgs image-transport sensor-msgs cv-bridge roscpp tf2-ros tf2 dynamic-reconfigure visualization-msgs opencv3 ];
  nativeBuildInputs = [ tf2-geometry-msgs fiducial-msgs image-transport sensor-msgs cv-bridge catkin roscpp tf2-ros tf2 dynamic-reconfigure visualization-msgs opencv3 ];

  meta = {
    description = ''DNN based detection'';
    #license = lib.licenses.BSD;
  };
}
