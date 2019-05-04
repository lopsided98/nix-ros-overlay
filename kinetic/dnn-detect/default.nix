
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, tf2-geometry-msgs, image-transport, sensor-msgs, cv-bridge, fiducial-msgs, catkin, tf2-ros, roscpp, tf2, dynamic-reconfigure, visualization-msgs, opencv3 }:
buildRosPackage {
  pname = "ros-kinetic-dnn-detect";
  version = "0.0.3";

  src = fetchurl {
    url = https://github.com/UbiquityRobotics-release/dnn_detect-release/archive/release/kinetic/dnn_detect/0.0.3-0.tar.gz;
    sha256 = "d137392a11d23204fb54890f99d51af09c80214f8fbdb0cf17063aeba1ed22cd";
  };

  buildInputs = [ tf2-geometry-msgs image-transport sensor-msgs cv-bridge fiducial-msgs roscpp tf2-ros tf2 dynamic-reconfigure visualization-msgs opencv3 ];
  propagatedBuildInputs = [ tf2-geometry-msgs image-transport sensor-msgs cv-bridge fiducial-msgs roscpp tf2-ros tf2 dynamic-reconfigure visualization-msgs opencv3 ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''DNN based detection'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
