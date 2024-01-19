
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, checkerboard-detector, image-proc, image-view2, jsk-pcl-ros, jsk-recognition-msgs, opencv-apps, posedetection-msgs, roseus, rostest, visualization-msgs }:
buildRosPackage {
  pname = "ros-noetic-roseus-tutorials";
  version = "1.7.5-r2";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_roseus-release/archive/release/noetic/roseus_tutorials/1.7.5-2.tar.gz";
    name = "1.7.5-2.tar.gz";
    sha256 = "97d658794d311e0d4812d8d0a302b62a76935982fac9af9ca65ce1520e0b8981";
  };

  buildType = "catkin";
  buildInputs = [ catkin roseus ];
  checkInputs = [ jsk-pcl-ros rostest ];
  propagatedBuildInputs = [ checkerboard-detector image-proc image-view2 jsk-recognition-msgs opencv-apps posedetection-msgs visualization-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''roseus_tutorials'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
