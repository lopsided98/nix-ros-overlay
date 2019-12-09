
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, jsk-topic-tools, sensor-msgs, posedetection-msgs, libsiftfast, cmake-modules, catkin, jsk-recognition-utils, image-transport, cv-bridge, nodelet, roscpp, rostest }:
buildRosPackage {
  pname = "ros-kinetic-imagesift";
  version = "1.2.9";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_recognition-release/archive/release/kinetic/imagesift/1.2.9-0.tar.gz";
    name = "1.2.9-0.tar.gz";
    sha256 = "88a9b0e992c9939aca44e9c51adcc04e103e42c00e72e880ac47391f59fccb8c";
  };

  buildType = "catkin";
  buildInputs = [ jsk-topic-tools sensor-msgs posedetection-msgs libsiftfast cmake-modules jsk-recognition-utils image-transport cv-bridge nodelet roscpp ];
  checkInputs = [ rostest ];
  propagatedBuildInputs = [ jsk-topic-tools sensor-msgs posedetection-msgs libsiftfast jsk-recognition-utils image-transport cv-bridge nodelet roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''For every image, computes its sift features and send a new message with the image, its intrinsic parameters, and the features.
    Parameters include:
    display - shows the image on the local computer'';
    license = with lib.licenses; [ lgpl2 ];
  };
}
