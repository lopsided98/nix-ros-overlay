
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake-modules, libsiftfast, image-transport, sensor-msgs, cv-bridge, posedetection-msgs, catkin, jsk-topic-tools, rostest, jsk-recognition-utils, nodelet, roscpp }:
buildRosPackage {
  pname = "ros-melodic-imagesift";
  version = "1.2.9";

  src = fetchurl {
    url = https://github.com/tork-a/jsk_recognition-release/archive/release/melodic/imagesift/1.2.9-0.tar.gz;
    sha256 = "cde7884d37ac150c32553a35447cb6aa7fa11fec05c4d052d3aba07a7eac1e9d";
  };

  checkInputs = [ rostest ];
  propagatedBuildInputs = [ libsiftfast image-transport sensor-msgs cv-bridge jsk-topic-tools posedetection-msgs roscpp jsk-recognition-utils nodelet ];
  nativeBuildInputs = [ cmake-modules libsiftfast image-transport sensor-msgs cv-bridge jsk-topic-tools posedetection-msgs roscpp catkin jsk-recognition-utils nodelet ];

  meta = {
    description = ''For every image, computes its sift features and send a new message with the image, its intrinsic parameters, and the features.
    Parameters include:
    display - shows the image on the local computer'';
    #license = lib.licenses.LGPL;
  };
}
