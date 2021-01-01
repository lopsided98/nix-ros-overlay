
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ar-track-alvar, catkin, checkerboard-detector, image-proc, image-view2, jsk-recognition-msgs, opencv-apps, posedetection-msgs, roseus, rostest, visualization-msgs }:
buildRosPackage {
  pname = "ros-kinetic-roseus-tutorials";
  version = "1.7.4";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_roseus-release/archive/release/kinetic/roseus_tutorials/1.7.4-0.tar.gz";
    name = "1.7.4-0.tar.gz";
    sha256 = "637a022cbdb3835b9b883a77825340462d412e56482ec2750f37dc7a50112609";
  };

  buildType = "catkin";
  buildInputs = [ roseus ];
  checkInputs = [ rostest ];
  propagatedBuildInputs = [ ar-track-alvar checkerboard-detector image-proc image-view2 jsk-recognition-msgs opencv-apps posedetection-msgs visualization-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''roseus_tutorials'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
