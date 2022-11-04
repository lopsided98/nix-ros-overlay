
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake-modules, cv-bridge, image-transport, jsk-recognition-utils, jsk-topic-tools, libsiftfast, nodelet, posedetection-msgs, pythonPackages, roscpp, rostest, sensor-msgs }:
buildRosPackage {
  pname = "ros-melodic-imagesift";
  version = "1.2.15-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_recognition-release/archive/release/melodic/imagesift/1.2.15-1.tar.gz";
    name = "1.2.15-1.tar.gz";
    sha256 = "0ebd264be9395ab7d14ca8daec8e98aa961cfa44134c02dad6e775c277486e53";
  };

  buildType = "catkin";
  buildInputs = [ catkin cmake-modules pythonPackages.setuptools ];
  checkInputs = [ rostest ];
  propagatedBuildInputs = [ cv-bridge image-transport jsk-recognition-utils jsk-topic-tools libsiftfast nodelet posedetection-msgs roscpp sensor-msgs ];
  nativeBuildInputs = [ catkin pythonPackages.setuptools ];

  meta = {
    description = ''For every image, computes its sift features and send a new message with the image, its intrinsic parameters, and the features.
    Parameters include:
    display - shows the image on the local computer'';
    license = with lib.licenses; [ "LGPL" ];
  };
}
