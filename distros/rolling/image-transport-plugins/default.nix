
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, compressed-depth-image-transport, compressed-image-transport, theora-image-transport }:
buildRosPackage {
  pname = "ros-rolling-image-transport-plugins";
  version = "3.2.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/image_transport_plugins-release/archive/release/rolling/image_transport_plugins/3.2.0-2.tar.gz";
    name = "3.2.0-2.tar.gz";
    sha256 = "c8fbcf0a7e4b8c23ef23d83c6b2346156cfa7649cbe772964b955e6f975ae04f";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ compressed-depth-image-transport compressed-image-transport theora-image-transport ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''A set of plugins for publishing and subscribing to sensor_msgs/Image topics
    in representations other than raw pixel data. For example, for viewing a
    stream of images off-robot, a video codec will give much lower bandwidth
    and latency. For low frame rate tranport of high-definition images, you
    might prefer sending them as JPEG or PNG-compressed form.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
