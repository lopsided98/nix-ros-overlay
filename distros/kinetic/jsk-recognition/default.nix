
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, checkerboard-detector, imagesift, jsk-pcl-ros, jsk-perception, jsk-recognition-msgs, jsk-recognition-utils, resized-image-transport }:
buildRosPackage {
  pname = "ros-kinetic-jsk-recognition";
  version = "1.2.15-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_recognition-release/archive/release/kinetic/jsk_recognition/1.2.15-1.tar.gz";
    name = "1.2.15-1.tar.gz";
    sha256 = "e782917e7d78ace6987a5b81ee8d5373f534efc8695c2de865bc4a9ac416e6e5";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ checkerboard-detector imagesift jsk-pcl-ros jsk-perception jsk-recognition-msgs jsk-recognition-utils resized-image-transport ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''<p>Metapackage that contains recognition package for jsk-ros-pkg</p>'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
