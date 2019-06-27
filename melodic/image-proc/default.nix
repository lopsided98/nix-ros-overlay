
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, camera-calibration-parsers, image-transport, sensor-msgs, cv-bridge, nodelet-topic-tools, catkin, image-geometry, rostest, nodelet, dynamic-reconfigure, roscpp }:
buildRosPackage {
  pname = "ros-melodic-image-proc";
  version = "1.13.0-r1";

  src = fetchurl {
    url = https://github.com/ros-gbp/image_pipeline-release/archive/release/melodic/image_proc/1.13.0-1.tar.gz;
    sha256 = "0766ca147ac73ee475bc3afef52a7baa337922abc116a4a4fc835001e098faa9";
  };

  buildInputs = [ boost image-transport sensor-msgs nodelet-topic-tools cv-bridge image-geometry nodelet dynamic-reconfigure roscpp ];
  checkInputs = [ camera-calibration-parsers rostest ];
  propagatedBuildInputs = [ image-transport sensor-msgs nodelet-topic-tools cv-bridge image-geometry nodelet dynamic-reconfigure roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Single image rectification and color processing.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
