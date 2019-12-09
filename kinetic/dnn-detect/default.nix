
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, tf2-ros, fiducial-msgs, sensor-msgs, dynamic-reconfigure, catkin, roscpp, image-transport, tf2-geometry-msgs, cv-bridge, visualization-msgs, tf2, opencv3 }:
buildRosPackage {
  pname = "ros-kinetic-dnn-detect";
  version = "0.0.3";

  src = fetchurl {
    url = "https://github.com/UbiquityRobotics-release/dnn_detect-release/archive/release/kinetic/dnn_detect/0.0.3-0.tar.gz";
    name = "0.0.3-0.tar.gz";
    sha256 = "d137392a11d23204fb54890f99d51af09c80214f8fbdb0cf17063aeba1ed22cd";
  };

  buildType = "catkin";
  buildInputs = [ fiducial-msgs sensor-msgs opencv3 dynamic-reconfigure tf2 image-transport tf2-geometry-msgs cv-bridge visualization-msgs roscpp tf2-ros ];
  propagatedBuildInputs = [ tf2-ros fiducial-msgs sensor-msgs dynamic-reconfigure roscpp image-transport tf2-geometry-msgs cv-bridge visualization-msgs tf2 opencv3 ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''DNN based detection'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
