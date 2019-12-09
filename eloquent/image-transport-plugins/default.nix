
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, compressed-depth-image-transport, theora-image-transport, ament-cmake, compressed-image-transport }:
buildRosPackage {
  pname = "ros-eloquent-image-transport-plugins";
  version = "2.2.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/image_transport_plugins-release/archive/release/eloquent/image_transport_plugins/2.2.1-1.tar.gz";
    name = "2.2.1-1.tar.gz";
    sha256 = "c37a4e65b198fac8fab508cf83bada45ef0ad12bfe6347aa8ee30e5239ec0a0e";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ compressed-depth-image-transport theora-image-transport compressed-image-transport ];
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
