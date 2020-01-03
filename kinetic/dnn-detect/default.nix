
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cv-bridge, dynamic-reconfigure, fiducial-msgs, image-transport, opencv3, roscpp, sensor-msgs, tf2, tf2-geometry-msgs, tf2-ros, visualization-msgs }:
buildRosPackage {
  pname = "ros-kinetic-dnn-detect";
  version = "0.0.3";

  src = fetchurl {
    url = "https://github.com/UbiquityRobotics-release/dnn_detect-release/archive/release/kinetic/dnn_detect/0.0.3-0.tar.gz";
    name = "0.0.3-0.tar.gz";
    sha256 = "d137392a11d23204fb54890f99d51af09c80214f8fbdb0cf17063aeba1ed22cd";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ cv-bridge dynamic-reconfigure fiducial-msgs image-transport opencv3 roscpp sensor-msgs tf2 tf2-geometry-msgs tf2-ros visualization-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''DNN based detection'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
