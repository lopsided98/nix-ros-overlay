
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, ament-lint-auto, ament-lint-common, pkg-config }:
buildRosPackage {
  pname = "ros-rolling-tracetools-image-pipeline";
  version = "7.1.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/image_pipeline-release/archive/release/rolling/tracetools_image_pipeline/7.1.3-1.tar.gz";
    name = "7.1.3-1.tar.gz";
    sha256 = "9d88b83cfb7994c4479ae2b65fcabf2d3993494ebf2ebd1d3664317fae90cd5a";
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
