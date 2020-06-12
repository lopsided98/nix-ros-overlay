
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, camera-calibration, depth-image-proc, image-proc, image-publisher, image-rotate }:
buildRosPackage {
  pname = "ros-foxy-image-pipeline";
  version = "2.1.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/image_pipeline-release/archive/release/foxy/image_pipeline/2.1.1-1.tar.gz";
    name = "2.1.1-1.tar.gz";
    sha256 = "835885e3dae6c078595ba261449e6e1570235c0ba1da70be3bbdb1ab559d5401";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ camera-calibration depth-image-proc image-proc image-publisher image-rotate ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''image_pipeline fills the gap between getting raw images from a camera driver and higher-level vision processing.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
