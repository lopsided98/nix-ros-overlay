
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, compressed-depth-image-transport, compressed-image-transport, theora-image-transport }:
buildRosPackage {
  pname = "ros-noetic-image-transport-plugins";
  version = "1.15.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/image_transport_plugins-release/archive/release/noetic/image_transport_plugins/1.15.0-1.tar.gz";
    name = "1.15.0-1.tar.gz";
    sha256 = "22c7cca0ba5aa490318456a28c2f475a2806acbdfe92fc4aa18c49db6a91f627";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ compressed-depth-image-transport compressed-image-transport theora-image-transport ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A set of plugins for publishing and subscribing to sensor_msgs/Image topics
    in representations other than raw pixel data. For example, for viewing a
    stream of images off-robot, a video codec will give much lower bandwidth
    and latency. For low frame rate tranport of high-definition images, you
    might prefer sending them as JPEG or PNG-compressed form.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
