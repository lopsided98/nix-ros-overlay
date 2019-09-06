
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, image-rotate, stereo-image-proc, depth-image-proc, catkin, camera-calibration, image-view, image-publisher, image-proc }:
buildRosPackage {
  pname = "ros-melodic-image-pipeline";
  version = "1.13.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/image_pipeline-release/archive/release/melodic/image_pipeline/1.13.0-1.tar.gz";
    name = "1.13.0-1.tar.gz";
    sha256 = "f036a5cd94826cc5b2d5713cb2594dc5835ff3245d64637f476c0564d510a99c";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ image-rotate stereo-image-proc depth-image-proc camera-calibration image-view image-publisher image-proc ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''image_pipeline fills the gap between getting raw images from a camera driver and higher-level vision processing.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
