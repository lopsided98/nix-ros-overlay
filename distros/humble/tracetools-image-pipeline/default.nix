
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, ament-lint-auto, ament-lint-common, pkg-config }:
buildRosPackage {
  pname = "ros-humble-tracetools-image-pipeline";
  version = "3.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/image_pipeline-release/archive/release/humble/tracetools_image_pipeline/3.0.0-1.tar.gz";
    name = "3.0.0-1.tar.gz";
    sha256 = "3f88211d7b02bd6cf6fd2f23701efa92e5f49851ac8ba568b7942700e4501aaf";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros pkg-config ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  nativeBuildInputs = [ ament-cmake-ros pkg-config ];

  meta = {
    description = ''LTTng tracing provider wrapper for image_pipeline ROS 2 meta-package.'';
    license = with lib.licenses; [ asl20 ];
  };
}
