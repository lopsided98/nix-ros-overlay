
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, jsk-pcl-ros, catkin, checkerboard-detector, resized-image-transport, jsk-recognition-msgs, jsk-recognition-utils, jsk-perception, imagesift }:
buildRosPackage {
  pname = "ros-kinetic-jsk-recognition";
  version = "1.2.9";

  src = fetchurl {
    url = https://github.com/tork-a/jsk_recognition-release/archive/release/kinetic/jsk_recognition/1.2.9-0.tar.gz;
    sha256 = "a3a764b09fdf37eb631803445fa8dd919241b6ee1022f58f4a3d10a28d7eb835";
  };

  propagatedBuildInputs = [ jsk-pcl-ros checkerboard-detector resized-image-transport jsk-recognition-msgs jsk-recognition-utils jsk-perception imagesift ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''<p>Metapackage that contains recognition package for jsk-ros-pkg</p>'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
