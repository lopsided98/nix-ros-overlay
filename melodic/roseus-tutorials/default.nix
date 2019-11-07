
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, roseus, image-view2, uvc-camera, ar-track-alvar, catkin, posedetection-msgs, checkerboard-detector, rostest, jsk-recognition-msgs, image-proc, visualization-msgs, opencv-apps }:
buildRosPackage {
  pname = "ros-melodic-roseus-tutorials";
  version = "1.7.4-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_roseus-release/archive/release/melodic/roseus_tutorials/1.7.4-1.tar.gz";
    name = "1.7.4-1.tar.gz";
    sha256 = "636febaa5696e25a61c0a8ecb98ecff1de97646c6d8b255956b3013758fd6be8";
  };

  buildType = "catkin";
  buildInputs = [ roseus ];
  checkInputs = [ rostest ];
  propagatedBuildInputs = [ image-view2 uvc-camera ar-track-alvar posedetection-msgs checkerboard-detector jsk-recognition-msgs image-proc visualization-msgs opencv-apps ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''roseus_tutorials'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
