
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, checkerboard-detector, imagesift, jsk-pcl-ros, jsk-perception, jsk-recognition-msgs, jsk-recognition-utils, resized-image-transport }:
buildRosPackage {
  pname = "ros-noetic-jsk-recognition";
  version = "1.2.19-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_recognition-release/archive/release/noetic/jsk_recognition/1.2.19-1.tar.gz";
    name = "1.2.19-1.tar.gz";
    sha256 = "cbd91fc2f5651165e67acfc17fc076b7386782722027d5789f89115a94b071e0";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ checkerboard-detector imagesift jsk-pcl-ros jsk-perception jsk-recognition-msgs jsk-recognition-utils resized-image-transport ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "<p>Metapackage that contains recognition package for jsk-ros-pkg</p>";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
