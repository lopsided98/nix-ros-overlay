
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, image-rotate, stereo-image-proc, depth-image-proc, catkin, camera-calibration, image-view, image-publisher, image-proc }:
buildRosPackage {
  pname = "ros-melodic-image-pipeline";
  version = "1.12.23";

  src = fetchurl {
    url = https://github.com/ros-gbp/image_pipeline-release/archive/release/melodic/image_pipeline/1.12.23-0.tar.gz;
    sha256 = "a6e5d39fd81ad438d67124e646c3da415e14afb3d0e59931e0d40433a6c1ea77";
  };

  propagatedBuildInputs = [ image-rotate stereo-image-proc depth-image-proc image-view image-publisher image-proc camera-calibration ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''image_pipeline fills the gap between getting raw images from a camera driver and higher-level vision processing.'';
    #license = lib.licenses.BSD;
  };
}
