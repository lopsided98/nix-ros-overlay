
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cv-bridge, dynamic-reconfigure, image-transport, image-transport-plugins, roscpp, sensor-msgs, tf2, tf2-geometry-msgs, tf2-ros, visualization-msgs }:
buildRosPackage {
  pname = "ros-kinetic-dnn-detect";
  version = "0.1.0-r1";

  src = fetchurl {
    url = "https://github.com/UbiquityRobotics-release/dnn_detect-release/archive/release/kinetic/dnn_detect/0.1.0-1.tar.gz";
    name = "0.1.0-1.tar.gz";
    sha256 = "e0b6a76be494ec751e041c8abb61629e55eda82c9040590b9c170e70e7f117a7";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ cv-bridge dynamic-reconfigure image-transport image-transport-plugins roscpp sensor-msgs tf2 tf2-geometry-msgs tf2-ros visualization-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''DNN based detection'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
