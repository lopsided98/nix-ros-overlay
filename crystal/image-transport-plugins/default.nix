
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, compressed-depth-image-transport, compressed-image-transport, theora-image-transport }:
buildRosPackage {
  pname = "ros-crystal-image-transport-plugins";
  version = "2.0.0";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/image_transport_plugins-release/archive/release/crystal/image_transport_plugins/2.0.0-0.tar.gz";
    name = "2.0.0-0.tar.gz";
    sha256 = "31adddd619d0be5f1561ae22d965b98da156ee9b5f0bfa0d7f06534c7eb743cc";
  };

  buildType = "ament_cmake";
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
