
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, compressed-depth-image-transport, compressed-image-transport, theora-image-transport }:
buildRosPackage {
  pname = "ros-melodic-image-transport-plugins";
  version = "1.9.5";

  src = fetchurl {
    url = "https://github.com/ros-gbp/image_transport_plugins-release/archive/release/melodic/image_transport_plugins/1.9.5-0.tar.gz";
    name = "1.9.5-0.tar.gz";
    sha256 = "1838bdad50e903b572a00fcb66935326e81c5e706af3356a64c0322927361ecd";
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
