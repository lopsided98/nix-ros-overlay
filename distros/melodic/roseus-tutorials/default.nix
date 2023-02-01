
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ar-track-alvar, catkin, checkerboard-detector, image-proc, image-view2, jsk-recognition-msgs, opencv-apps, posedetection-msgs, roseus, rostest, uvc-camera, visualization-msgs }:
buildRosPackage {
  pname = "ros-melodic-roseus-tutorials";
  version = "1.7.4-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "tork-a";
        repo = "jsk_roseus-release";
        rev = "release/melodic/roseus_tutorials/1.7.4-1";
        sha256 = "sha256-d4YRj9NPIZWTA6VqpyNefpJeva9LraVwK/KqD/l4q98=";
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
