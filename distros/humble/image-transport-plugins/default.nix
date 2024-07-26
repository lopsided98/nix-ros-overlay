
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, compressed-depth-image-transport, compressed-image-transport, theora-image-transport }:
buildRosPackage {
  pname = "ros-humble-image-transport-plugins";
  version = "2.5.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/image_transport_plugins-release/archive/release/humble/image_transport_plugins/2.5.2-1.tar.gz";
    name = "2.5.2-1.tar.gz";
    sha256 = "80abfe3faf3f7cb58fd0ad47d19a68acd49bac5c9d103bac7126509709d9d173";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ compressed-depth-image-transport compressed-image-transport theora-image-transport ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "A set of plugins for publishing and subscribing to sensor_msgs/Image topics
    in representations other than raw pixel data. For example, for viewing a
    stream of images off-robot, a video codec will give much lower bandwidth
    and latency. For low frame rate tranport of high-definition images, you
    might prefer sending them as JPEG or PNG-compressed form.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
