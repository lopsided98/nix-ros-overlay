
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, ament-lint-auto, ament-lint-common, pkg-config }:
buildRosPackage {
  pname = "ros-jazzy-tracetools-image-pipeline";
  version = "5.0.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/image_pipeline-release/archive/release/jazzy/tracetools_image_pipeline/5.0.5-1.tar.gz";
    name = "5.0.5-1.tar.gz";
    sha256 = "018ab36f58714182aa54b94dd481ab334c73b593180424058b3fdc4a336b7164";
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
