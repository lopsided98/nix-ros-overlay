
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, ament-lint-auto, ament-lint-common, pkg-config }:
buildRosPackage {
  pname = "ros-foxy-tracetools-image-pipeline";
  version = "2.3.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/image_pipeline-release/archive/release/foxy/tracetools_image_pipeline/2.3.0-1.tar.gz";
    name = "2.3.0-1.tar.gz";
    sha256 = "521af743592cf26c1c63ebc9b06713f69a258883ff573a031acc538865b4131d";
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
