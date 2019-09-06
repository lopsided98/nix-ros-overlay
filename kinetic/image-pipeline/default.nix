
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, image-rotate, stereo-image-proc, depth-image-proc, catkin, camera-calibration, image-view, image-publisher, image-proc }:
buildRosPackage {
  pname = "ros-kinetic-image-pipeline";
  version = "1.12.23";

  src = fetchurl {
    url = "https://github.com/ros-gbp/image_pipeline-release/archive/release/kinetic/image_pipeline/1.12.23-0.tar.gz";
    name = "1.12.23-0.tar.gz";
    sha256 = "9deccdc236c0245bf2422db738fc0a8603f51054df87f4c3c2a030a178945a75";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ image-rotate stereo-image-proc depth-image-proc camera-calibration image-view image-publisher image-proc ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''image_pipeline fills the gap between getting raw images from a camera driver and higher-level vision processing.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
