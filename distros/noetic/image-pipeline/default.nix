
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, camera-calibration, catkin, depth-image-proc, image-proc, image-publisher, image-rotate, image-view, stereo-image-proc }:
buildRosPackage {
  pname = "ros-noetic-image-pipeline";
  version = "1.15.2-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/image_pipeline-release/archive/release/noetic/image_pipeline/1.15.2-1.tar.gz";
    name = "1.15.2-1.tar.gz";
    sha256 = "24a8960c97b6b039ca4a4a39825f23fe3d1af1069c082078b863acdc61d90d80";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ camera-calibration depth-image-proc image-proc image-publisher image-rotate image-view stereo-image-proc ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''image_pipeline fills the gap between getting raw images from a camera driver and higher-level vision processing.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
