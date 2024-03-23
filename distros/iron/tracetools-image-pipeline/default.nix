
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, ament-lint-auto, ament-lint-common, pkg-config }:
buildRosPackage {
  pname = "ros-iron-tracetools-image-pipeline";
  version = "4.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/image_pipeline-release/archive/release/iron/tracetools_image_pipeline/4.0.0-1.tar.gz";
    name = "4.0.0-1.tar.gz";
    sha256 = "d732ef79bf506b36a1325ea1b8c4560a3f80d9337cbf72620a975c869e1653a3";
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
