
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, camera-calibration, depth-image-proc, image-proc, image-publisher, image-rotate }:
buildRosPackage {
  pname = "ros-dashing-image-pipeline";
  version = "2.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/image_pipeline-release/archive/release/dashing/image_pipeline/2.1.0-1.tar.gz";
    name = "2.1.0-1.tar.gz";
    sha256 = "b1a91ea077d4f535330dc9edb56f099913a589fea780f41a482976e2c34649c7";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ camera-calibration depth-image-proc image-proc image-publisher image-rotate ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''image_pipeline fills the gap between getting raw images from a camera driver and higher-level vision processing.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
