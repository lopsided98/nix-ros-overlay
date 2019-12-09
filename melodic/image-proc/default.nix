
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, boost, nodelet-topic-tools, dynamic-reconfigure, catkin, image-transport, cv-bridge, nodelet, roscpp, camera-calibration-parsers, rostest, image-geometry }:
buildRosPackage {
  pname = "ros-melodic-image-proc";
  version = "1.13.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/image_pipeline-release/archive/release/melodic/image_proc/1.13.0-1.tar.gz";
    name = "1.13.0-1.tar.gz";
    sha256 = "0766ca147ac73ee475bc3afef52a7baa337922abc116a4a4fc835001e098faa9";
  };

  buildType = "catkin";
  buildInputs = [ boost nodelet-topic-tools sensor-msgs dynamic-reconfigure image-transport cv-bridge nodelet roscpp image-geometry ];
  checkInputs = [ camera-calibration-parsers rostest ];
  propagatedBuildInputs = [ sensor-msgs nodelet-topic-tools dynamic-reconfigure image-transport cv-bridge nodelet roscpp image-geometry ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Single image rectification and color processing.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
