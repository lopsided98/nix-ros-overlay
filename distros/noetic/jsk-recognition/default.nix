
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, checkerboard-detector, imagesift, jsk-pcl-ros, jsk-perception, jsk-recognition-msgs, jsk-recognition-utils, resized-image-transport }:
buildRosPackage {
  pname = "ros-noetic-jsk-recognition";
  version = "1.2.15-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_recognition-release/archive/release/noetic/jsk_recognition/1.2.15-1.tar.gz";
    name = "1.2.15-1.tar.gz";
    sha256 = "eb418e1268b69ae5ac4dd14eaa396b081c86b6c02e7f64829e63fa7b3dc5ecc5";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ checkerboard-detector imagesift jsk-pcl-ros jsk-perception jsk-recognition-msgs jsk-recognition-utils resized-image-transport ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''<p>Metapackage that contains recognition package for jsk-ros-pkg</p>'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
