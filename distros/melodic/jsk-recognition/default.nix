
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, checkerboard-detector, imagesift, jsk-pcl-ros, jsk-perception, jsk-recognition-msgs, jsk-recognition-utils, resized-image-transport }:
buildRosPackage {
  pname = "ros-melodic-jsk-recognition";
  version = "1.2.15-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_recognition-release/archive/release/melodic/jsk_recognition/1.2.15-1.tar.gz";
    name = "1.2.15-1.tar.gz";
    sha256 = "518fcc5c7479143dafb6eca60cc31833e3e27ee43115e8a9ab7eb894640fb6c4";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ checkerboard-detector imagesift jsk-pcl-ros jsk-perception jsk-recognition-msgs jsk-recognition-utils resized-image-transport ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''<p>Metapackage that contains recognition package for jsk-ros-pkg</p>'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
