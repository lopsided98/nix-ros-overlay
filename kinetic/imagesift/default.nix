
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake-modules, libsiftfast, image-transport, sensor-msgs, cv-bridge, posedetection-msgs, jsk-topic-tools, catkin, roscpp, rostest, jsk-recognition-utils, nodelet }:
buildRosPackage {
  pname = "ros-kinetic-imagesift";
  version = "1.2.9";

  src = fetchurl {
    url = https://github.com/tork-a/jsk_recognition-release/archive/release/kinetic/imagesift/1.2.9-0.tar.gz;
    sha256 = "88a9b0e992c9939aca44e9c51adcc04e103e42c00e72e880ac47391f59fccb8c";
  };

  buildInputs = [ cmake-modules libsiftfast image-transport sensor-msgs cv-bridge posedetection-msgs jsk-topic-tools roscpp jsk-recognition-utils nodelet ];
  checkInputs = [ rostest ];
  propagatedBuildInputs = [ libsiftfast image-transport sensor-msgs cv-bridge posedetection-msgs jsk-topic-tools roscpp jsk-recognition-utils nodelet ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''For every image, computes its sift features and send a new message with the image, its intrinsic parameters, and the features.
    Parameters include:
    display - shows the image on the local computer'';
    license = with lib.licenses; [ lgpl2 ];
  };
}
