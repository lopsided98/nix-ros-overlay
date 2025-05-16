
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake-modules, cv-bridge, image-transport, jsk-recognition-utils, jsk-topic-tools, libsiftfast, nodelet, posedetection-msgs, python3Packages, ros-environment, roscpp, rostest, sensor-msgs }:
buildRosPackage {
  pname = "ros-noetic-imagesift";
  version = "1.2.19-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_recognition-release/archive/release/noetic/imagesift/1.2.19-1.tar.gz";
    name = "1.2.19-1.tar.gz";
    sha256 = "eedfaeb0be40da7a72f316e46e85ca814948e313d8373da9aecee9e7e79f96c4";
  };

  buildType = "catkin";
  buildInputs = [ catkin cmake-modules python3Packages.setuptools ros-environment ];
  checkInputs = [ rostest ];
  propagatedBuildInputs = [ cv-bridge image-transport jsk-recognition-utils jsk-topic-tools libsiftfast nodelet posedetection-msgs roscpp sensor-msgs ];
  nativeBuildInputs = [ catkin python3Packages.setuptools ];

  meta = {
    description = "For every image, computes its sift features and send a new message with the image, its intrinsic parameters, and the features.
    Parameters include:
    display - shows the image on the local computer";
    license = with lib.licenses; [ "LGPL" ];
  };
}
