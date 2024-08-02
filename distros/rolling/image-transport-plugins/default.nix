
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, compressed-depth-image-transport, compressed-image-transport, theora-image-transport, zstd-image-transport }:
buildRosPackage {
  pname = "ros-rolling-image-transport-plugins";
  version = "5.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/image_transport_plugins-release/archive/release/rolling/image_transport_plugins/5.0.0-1.tar.gz";
    name = "5.0.0-1.tar.gz";
    sha256 = "7b8f0ae03de42b959c08f4385f051f519f81e549624a7aaa02f0416748f5df75";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ compressed-depth-image-transport compressed-image-transport theora-image-transport zstd-image-transport ];
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
