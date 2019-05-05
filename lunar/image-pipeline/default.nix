
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, image-rotate, stereo-image-proc, depth-image-proc, catkin, camera-calibration, image-view, image-publisher, image-proc }:
buildRosPackage {
  pname = "ros-lunar-image-pipeline";
  version = "1.12.23";

  src = fetchurl {
    url = https://github.com/ros-gbp/image_pipeline-release/archive/release/lunar/image_pipeline/1.12.23-0.tar.gz;
    sha256 = "9cfe5089f4798606dc3d5458f75a3fad098f7598843734a0c1329ab50cb2f835";
  };

  propagatedBuildInputs = [ image-rotate stereo-image-proc depth-image-proc camera-calibration image-view image-publisher image-proc ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''image_pipeline fills the gap between getting raw images from a camera driver and higher-level vision processing.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
