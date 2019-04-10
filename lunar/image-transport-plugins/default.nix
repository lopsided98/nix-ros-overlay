
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, compressed-depth-image-transport, catkin, theora-image-transport, compressed-image-transport }:
buildRosPackage {
  pname = "ros-lunar-image-transport-plugins";
  version = "1.9.5";

  src = fetchurl {
    url = https://github.com/ros-gbp/image_transport_plugins-release/archive/release/lunar/image_transport_plugins/1.9.5-0.tar.gz;
    sha256 = "af224372ff5e069e03f1e960d544b2d5cd595eaf2c6f27cf4b86696088f4ee73";
  };

  propagatedBuildInputs = [ compressed-depth-image-transport theora-image-transport compressed-image-transport ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A set of plugins for publishing and subscribing to sensor_msgs/Image topics
    in representations other than raw pixel data. For example, for viewing a
    stream of images off-robot, a video codec will give much lower bandwidth
    and latency. For low frame rate tranport of high-definition images, you
    might prefer sending them as JPEG or PNG-compressed form.'';
    #license = lib.licenses.BSD;
  };
}
