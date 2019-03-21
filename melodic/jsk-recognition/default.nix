
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, jsk-pcl-ros, catkin, checkerboard-detector, resized-image-transport, jsk-recognition-utils, jsk-recognition-msgs, jsk-perception, imagesift }:
buildRosPackage {
  pname = "ros-melodic-jsk-recognition";
  version = "1.2.10";

  src = fetchurl {
    url = https://github.com/tork-a/jsk_recognition-release/archive/release/melodic/jsk_recognition/1.2.10-0.tar.gz;
    sha256 = "abcd88e0a0d3f5f13a04503b9910baa644e4f6044ba3987b0026eac7c198a88d";
  };

  propagatedBuildInputs = [ jsk-pcl-ros jsk-recognition-utils jsk-recognition-msgs resized-image-transport checkerboard-detector jsk-perception imagesift ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''<p>Metapackage that contains recognition package for jsk-ros-pkg</p>'';
    #license = lib.licenses.BSD;
  };
}
