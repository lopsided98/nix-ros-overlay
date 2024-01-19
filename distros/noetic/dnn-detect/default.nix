
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cv-bridge, dynamic-reconfigure, image-transport, image-transport-plugins, roscpp, sensor-msgs, tf2, tf2-geometry-msgs, tf2-ros, visualization-msgs }:
buildRosPackage {
  pname = "ros-noetic-dnn-detect";
  version = "0.1.0-r1";

  src = fetchurl {
    url = "https://github.com/UbiquityRobotics-release/dnn_detect-release/archive/release/noetic/dnn_detect/0.1.0-1.tar.gz";
    name = "0.1.0-1.tar.gz";
    sha256 = "d19a621cdb0b368a4f90b5bb7d8f0b85b6efbf70c64aa1dd52503a60a85de8c1";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ cv-bridge dynamic-reconfigure image-transport image-transport-plugins roscpp sensor-msgs tf2 tf2-geometry-msgs tf2-ros visualization-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''DNN based detection'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
