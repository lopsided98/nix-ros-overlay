
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, resized-image-transport, checkerboard-detector, jsk-pcl-ros, catkin, jsk-recognition-msgs, jsk-recognition-utils, imagesift, jsk-perception }:
buildRosPackage {
  pname = "ros-kinetic-jsk-recognition";
  version = "1.2.9";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_recognition-release/archive/release/kinetic/jsk_recognition/1.2.9-0.tar.gz";
    name = "1.2.9-0.tar.gz";
    sha256 = "a3a764b09fdf37eb631803445fa8dd919241b6ee1022f58f4a3d10a28d7eb835";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ resized-image-transport checkerboard-detector jsk-pcl-ros jsk-recognition-msgs jsk-recognition-utils imagesift jsk-perception ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''<p>Metapackage that contains recognition package for jsk-ros-pkg</p>'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
