
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, roseus, image-view2, ar-track-alvar, catkin, posedetection-msgs, checkerboard-detector, rostest, jsk-recognition-msgs, image-proc, visualization-msgs, opencv-apps }:
buildRosPackage {
  pname = "ros-kinetic-roseus-tutorials";
  version = "1.7.4";

  src = fetchurl {
    url = https://github.com/tork-a/jsk_roseus-release/archive/release/kinetic/roseus_tutorials/1.7.4-0.tar.gz;
    sha256 = "637a022cbdb3835b9b883a77825340462d412e56482ec2750f37dc7a50112609";
  };

  buildInputs = [ roseus ];
  checkInputs = [ rostest ];
  propagatedBuildInputs = [ image-view2 jsk-recognition-msgs ar-track-alvar image-proc visualization-msgs posedetection-msgs checkerboard-detector opencv-apps ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''roseus_tutorials'';
    #license = lib.licenses.BSD;
  };
}
