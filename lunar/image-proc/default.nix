
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, camera-calibration-parsers, image-transport, sensor-msgs, cv-bridge, nodelet-topic-tools, catkin, roscpp, image-geometry, rostest, dynamic-reconfigure, nodelet }:
buildRosPackage {
  pname = "ros-lunar-image-proc";
  version = "1.12.23";

  src = fetchurl {
    url = https://github.com/ros-gbp/image_pipeline-release/archive/release/lunar/image_proc/1.12.23-0.tar.gz;
    sha256 = "81f3cc056b1aedad8d1bcbb6586c23e1bf885b2934679a191587daf179af127a";
  };

  buildInputs = [ boost image-transport sensor-msgs cv-bridge nodelet-topic-tools roscpp image-geometry dynamic-reconfigure nodelet ];
  checkInputs = [ camera-calibration-parsers rostest ];
  propagatedBuildInputs = [ cv-bridge nodelet dynamic-reconfigure image-transport sensor-msgs nodelet-topic-tools roscpp image-geometry ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Single image rectification and color processing.'';
    #license = lib.licenses.BSD;
  };
}
