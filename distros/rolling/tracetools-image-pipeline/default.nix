
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, ament-lint-auto, ament-lint-common, pkg-config }:
buildRosPackage {
  pname = "ros-rolling-tracetools-image-pipeline";
  version = "8.0.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/image_pipeline-release/archive/release/rolling/tracetools_image_pipeline/8.0.2-1.tar.gz";
    name = "8.0.2-1.tar.gz";
    sha256 = "646e378edfa367f371c92aef44589a6fb7995b5280e3169281405f20a1b40e64";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros pkg-config ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  nativeBuildInputs = [ ament-cmake-ros pkg-config ];

  meta = {
    description = "LTTng tracing provider wrapper for image_pipeline ROS 2 meta-package.";
    license = with lib.licenses; [ asl20 ];
  };
}
