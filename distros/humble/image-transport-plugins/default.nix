
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, compressed-depth-image-transport, compressed-image-transport, theora-image-transport }:
buildRosPackage {
  pname = "ros-humble-image-transport-plugins";
  version = "2.5.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/image_transport_plugins-release/archive/release/humble/image_transport_plugins/2.5.5-1.tar.gz";
    name = "2.5.5-1.tar.gz";
    sha256 = "79dea10a27d243f4f96a106838a49699d9f70e1c3f28bd75df4157e229de8a0c";
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
