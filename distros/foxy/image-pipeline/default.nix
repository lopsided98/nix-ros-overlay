
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, camera-calibration, depth-image-proc, image-proc, image-publisher, image-rotate }:
buildRosPackage {
  pname = "ros-foxy-image-pipeline";
  version = "2.2.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/image_pipeline-release/archive/release/foxy/image_pipeline/2.2.0-2.tar.gz";
    name = "2.2.0-2.tar.gz";
    sha256 = "7353eb75b68c576b7057d1362c94f072f0100eaa2755f932ac84a5f99dd1f210";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ camera-calibration depth-image-proc image-proc image-publisher image-rotate ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''image_pipeline fills the gap between getting raw images from a camera driver and higher-level vision processing.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
