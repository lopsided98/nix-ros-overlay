
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, camera-calibration-parsers, catkin, cv-bridge, dynamic-reconfigure, image-geometry, image-transport, nodelet, nodelet-topic-tools, roscpp, rostest, sensor-msgs }:
buildRosPackage {
  pname = "ros-noetic-image-proc";
  version = "1.16.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/image_pipeline-release/archive/release/noetic/image_proc/1.16.0-1.tar.gz";
    name = "1.16.0-1.tar.gz";
    sha256 = "f1edc97b5e95327a66a6dcb3d81c621f6a14ca504045c9e799a5e832a18d5b9a";
  };

  buildType = "catkin";
  buildInputs = [ boost catkin ];
  checkInputs = [ camera-calibration-parsers rostest ];
  propagatedBuildInputs = [ cv-bridge dynamic-reconfigure image-geometry image-transport nodelet nodelet-topic-tools roscpp sensor-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Single image rectification and color processing.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
