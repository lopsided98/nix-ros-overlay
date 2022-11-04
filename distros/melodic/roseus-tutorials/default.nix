
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ar-track-alvar, catkin, checkerboard-detector, image-proc, image-view2, jsk-recognition-msgs, opencv-apps, posedetection-msgs, roseus, rostest, uvc-camera, visualization-msgs }:
buildRosPackage {
  pname = "ros-melodic-roseus-tutorials";
  version = "1.7.4-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_roseus-release/archive/release/melodic/roseus_tutorials/1.7.4-1.tar.gz";
    name = "1.7.4-1.tar.gz";
    sha256 = "636febaa5696e25a61c0a8ecb98ecff1de97646c6d8b255956b3013758fd6be8";
  };

  buildType = "catkin";
  buildInputs = [ catkin roseus ];
  checkInputs = [ rostest ];
  propagatedBuildInputs = [ ar-track-alvar checkerboard-detector image-proc image-view2 jsk-recognition-msgs opencv-apps posedetection-msgs uvc-camera visualization-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''roseus_tutorials'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
